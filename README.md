# Opossum Dev — Shopify Apps

Marketing site for Opossum Dev, rewritten from hand-written HTML to **Nuxt 3**
with **Tailwind CSS**. The site is **fully static** (`nuxt generate`) and served
by **Nginx** in Docker, intended for a DigitalOcean droplet.

The "Play" typeface is self-hosted (`public/fonts/`) and wired up as the default
font in `tailwind.config.js` + `assets/css/main.css`.

## Pages

| Route | Source |
| --- | --- |
| `/` | `pages/index.vue` |
| `/google-sheets-orders-sync/` | `pages/google-sheets-orders-sync/index.vue` |

Shared chrome lives in `layouts/default.vue` (`components/AppHeader.vue`,
`components/AppFooter.vue`).

## Local development

```bash
npm install
npm run dev          # http://localhost:3000
```

## Build the static site

```bash
npm run generate     # output -> .output/public
npx serve .output/public   # optional local preview
```

## Docker

Multi-stage build: Node generates the static site, then it's served by Nginx
(with TLS + the SEO redirects).

```bash
docker compose up -d --build
```

- Ports `80` and `443` are exposed.
- If no real TLS cert is found at `/etc/nginx/ssl`, the entrypoint mints a
  self-signed one so the container always boots. Mount real certs to override
  (see below).

## Deploying to DigitalOcean

1. **DNS** — point `opossum-dev.com` and `www.opossum-dev.com` A records at the
   droplet.
2. **Get a certificate** (Let's Encrypt) on the droplet, e.g.:
   ```bash
   sudo certbot certonly --standalone -d opossum-dev.com -d www.opossum-dev.com
   ```
3. **Expose the certs to the container** — the compose file mounts `./ssl` into
   `/etc/nginx/ssl`. Symlink/copy the issued files there:
   ```bash
   mkdir -p ssl
   ln -sf /etc/letsencrypt/live/opossum-dev.com/fullchain.pem ssl/fullchain.pem
   ln -sf /etc/letsencrypt/live/opossum-dev.com/privkey.pem   ssl/privkey.pem
   ```
4. **Run it**:
   ```bash
   docker compose up -d --build
   ```
5. **Cert renewal** — renew with certbot on the host (cron/systemd timer) and
   `docker compose restart web` to reload, or wire up a certbot sidecar using the
   `./certbot/www` webroot already mounted for `/.well-known/acme-challenge/`.

## SEO redirects (Nginx — `nginx/default.conf`)

Canonical URL form is **`https://opossum-dev.com/<path>/`** (HTTPS, apex domain,
trailing slash, no `.html`). Everything else 301s onto it, eliminating duplicate
content:

| From | To |
| --- | --- |
| `http://…` | `https://…` |
| `https://www.opossum-dev.com/…` | `https://opossum-dev.com/…` |
| `/index.html` | `/` |
| `/GoogleSheetsOrdersSync.html` (legacy) | `/google-sheets-orders-sync/` |
| `/<anything>.html` | `/<anything>/` |
| `/<page>` (no trailing slash) | `/<page>/` |

`robots.txt` and `sitemap.xml` (in `public/`) reference the canonical host.

## Notes

- `test.php` is a leftover, unrelated SOAP debug script. It is **not** part of the
  site, not served, and excluded from the Docker image. Remove it if unwanted.
- To change the production domain, update it in `nginx/default.conf`,
  `public/robots.txt`, `public/sitemap.xml`, and the `siteUrl` constant in the two
  page components.
