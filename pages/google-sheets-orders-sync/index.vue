<script setup lang="ts">
const siteUrl = 'https://opossum-dev.com'
const appStoreUrl = 'https://apps.shopify.com/google-sheets-orders-sync'

useSeoMeta({
  title: 'Google Sheets Orders Sync - Shopify App',
  description:
    "Keep a live copy of your Shopify orders inside Google Sheets. New and edited orders sync automatically — no exports, no code.",
  ogTitle: 'Google Sheets Orders Sync - Shopify App',
  ogDescription:
    'Automatically sync Shopify orders to Google Sheets. Hands-off, no code, $4.90/mo with a 7-day free trial.',
  ogType: 'website',
  ogUrl: `${siteUrl}/google-sheets-orders-sync/`
})

useHead({
  link: [{ rel: 'canonical', href: `${siteUrl}/google-sheets-orders-sync/` }]
})
</script>

<template>
  <div>
    <!-- Fixed bottom CTA (mobile / tablet only) -->
    <div class="hidden max-xl:block">
      <div class="fixed bottom-0 left-0 w-full h-14 text-center z-10">
        <a
          :href="appStoreUrl"
          target="_blank"
          rel="noopener"
          class="flex items-center justify-center w-full h-full bg-brand text-ink no-underline hover:bg-brand-dark"
        >
          <span class="uppercase font-bold text-2xl">Get app</span>
        </a>
      </div>
    </div>

    <!-- Title -->
    <section class="mt-0 md:mt-4 lg:mt-11">
      <div class="container-x">
        <h1 class="font-bold text-3xl sm:text-4xl leading-tight">
          Google Sheets Orders Sync
        </h1>
      </div>
    </section>

    <!-- Details -->
    <section class="relative mt-6">
      <div class="container-x">
        <article class="article">
          <!-- Main content -->
          <div class="article-body">
            <span class="app-icon-wrap">
              <img
                src="/img/google-sheets-orders-sync-64.png"
                alt="Google Sheets Orders Sync icon"
              />
            </span>
            <h5 class="article-lead">
              Keep a live copy of your store's orders inside Google Sheets. As
              soon as an order is placed or changed in Shopify, its details land
              in your spreadsheet on their own — so the figures your team relies
              on are never stale and you never touch an export file again.
            </h5>

            <ul>
              <li>
                Hands-off syncing — fresh orders appear in your sheet
                automatically, with no downloads or imports to run.
              </li>
              <li>
                Edits stay in step — adjust an order in Shopify and the same
                row in your sheet rewrites itself to match.
              </li>
              <li>
                Up and running in about a minute — paste your sheet's link,
                share it with our service account, and you're finished.
              </li>
              <li>
                Not a line of code required — everything is handled from one
                simple settings screen, no developer involved.
              </li>
              <li>
                Built entirely around Google Sheets, so your data is instantly
                shareable with staff, suppliers or your accountant.
              </li>
              <li>
                Perfect for daily reporting, automatic backups, and piping
                order data into the rest of your business tools.
              </li>
            </ul>

            <h2>How it works</h2>
            <ul>
              <li>
                Open the app and paste the link of the Google Sheet you want
                to fill.
              </li>
              <li>
                Share that sheet with the email address the app shows you,
                giving it editor access.
              </li>
              <li>
                Carry on selling — every new and updated order flows into the
                sheet by itself.
              </li>
            </ul>

            <h2>Simple pricing</h2>
            <p>
              $4.90 per month with a 7-day free trial. Billed every 30 days in
              USD — cancel whenever you like.
            </p>

            <h2>Privacy</h2>
            <p>
              See how the app handles your store and customer data in our
              <NuxtLink
                to="/google-sheets-orders-sync/privacy/"
                class="text-teal hover:underline"
              >Privacy Policy</NuxtLink>.
            </p>
          </div>

          <!-- App Store sidebar (desktop only) -->
          <aside class="article-aside">
            <div class="bg-black w-full rounded-xl relative py-11 px-4">
              <h2 class="text-3xl font-bold leading-tight text-white mb-7">
                Available on the Shopify App Store
              </h2>
              <div class="w-full h-14 text-center">
                <a
                  :href="appStoreUrl"
                  target="_blank"
                  rel="noopener"
                  class="flex items-center justify-center w-full h-full bg-brand text-ink no-underline rounded-md hover:bg-brand-dark"
                >
                  <span class="uppercase font-bold text-2xl">Get app</span>
                </a>
              </div>
            </div>
          </aside>
        </article>
      </div>
    </section>
  </div>
</template>
