# syntax=docker/dockerfile:1

# ---- Stage 1: build the static site ----
FROM node:22-alpine AS build
WORKDIR /app

# Install deps (cached unless lockfile/manifest changes)
COPY package.json package-lock.json* ./
RUN npm ci || npm install

# Build the fully static site -> /app/.output/public
COPY . .
RUN npm run generate

# ---- Stage 2: serve with Nginx ----
FROM nginx:1.27-alpine AS runtime

# openssl is used by the entrypoint to mint a self-signed cert as a fallback
RUN apk add --no-cache openssl

# Static output
COPY --from=build /app/.output/public /usr/share/nginx/html

# Nginx config + entrypoint
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/entrypoint.sh /usr/local/bin/site-entrypoint.sh
RUN chmod +x /usr/local/bin/site-entrypoint.sh

EXPOSE 80 443

ENTRYPOINT ["/usr/local/bin/site-entrypoint.sh"]
