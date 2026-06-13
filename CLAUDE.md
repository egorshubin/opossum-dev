# Opossum Dev — project instructions

## Hard rules (do NOT violate)

- **Never run deploys locally.** Do not run any deploy commands, scripts, or
  remote provisioning from this machine.
- **Never boot Docker.** Do not run `docker`, `docker compose up`, `docker build`,
  or any container that starts the site. Docker/nginx are for the production
  droplet only. Building the static site with `npm run generate` is fine.

## What this is

Marketing site for Opossum Dev, rewritten from hand-written HTML to **Nuxt 3** +
**Tailwind CSS**. Fully static (`nuxt generate` → `.output/public`), served by
Nginx in Docker on a DigitalOcean droplet (production only — see hard rules).

## Working locally

```bash
npm install
npm run dev          # http://localhost:3000
npm run generate     # static output -> .output/public
```

## Layout

- Pages: `pages/index.vue`, `pages/google-sheets-orders-sync/index.vue`
- Shared chrome: `layouts/default.vue` + `components/AppHeader.vue` / `AppFooter.vue`
- Styles: Tailwind (`tailwind.config.js`) + `assets/css/main.css` (self-hosted "Play" font)
- Static assets: `public/` (`img/`, `fonts/`, `robots.txt`, `sitemap.xml`)
- Infra (production only): `Dockerfile`, `docker-compose.yml`, `nginx/`

To change the production domain, update `nginx/default.conf`, `public/robots.txt`,
`public/sitemap.xml`, and the `siteUrl` constant in both page components.
