// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',

  // Fully static site (SSG). `npm run generate` -> .output/public
  ssr: true,

  modules: ['@nuxtjs/tailwindcss'],

  css: ['~/assets/css/main.css'],

  // Canonical URLs use a trailing slash; Nitro writes each route as
  // <route>/index.html so it maps cleanly to /<route>/ on Nginx.
  nitro: {
    prerender: {
      crawlLinks: true,
      routes: ['/'],
      failOnError: true
    }
  },

  app: {
    // Emit relative-free, root-absolute asset URLs.
    baseURL: '/',
    head: {
      htmlAttrs: { lang: 'en' },
      meta: [
        { charset: 'UTF-8' },
        {
          name: 'viewport',
          content:
            'width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0'
        },
        { 'http-equiv': 'X-UA-Compatible', content: 'ie=edge' }
      ],
      link: [{ rel: 'icon', type: 'image/png', href: '/img/favicon.png' }]
    }
  }
})
