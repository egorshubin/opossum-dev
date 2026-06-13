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
# App Platform terminates TLS at its edge and forwards plain HTTP to :8080,
# so no SSL/openssl/self-signed entrypoint is needed here (that was the Droplet
# path). The stock nginx image entrypoint runs `nginx -g 'daemon off;'`.
FROM nginx:1.27-alpine AS runtime

# Static output
COPY --from=build /app/.output/public /usr/share/nginx/html

# Plain-HTTP Nginx config (listens on 8080)
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
