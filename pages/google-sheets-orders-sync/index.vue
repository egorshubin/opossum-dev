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
    <div class="hidden max-[1199px]:block">
      <div class="fixed bottom-0 left-0 w-full h-[53px] text-center z-[1]">
        <a
          :href="appStoreUrl"
          target="_blank"
          rel="noopener"
          class="block w-full h-full bg-pink text-white no-underline hover:bg-pink-dark"
        >
          <span
            class="uppercase relative font-bold text-[24px] leading-[27.77px] top-[11px]"
            >Get app</span
          >
        </a>
      </div>
    </div>

    <!-- Title -->
    <section
      class="mt-0 md:mt-[15px] min-[1001px]:mt-[45px]"
    >
      <div class="container-x">
        <h1
          class="font-bold text-[30px] min-[431px]:text-[36px] leading-[41.65px]"
        >
          Google Sheets Orders Sync
        </h1>
      </div>
    </section>

    <!-- Details -->
    <section class="relative mt-[25px]">
      <div class="container-x">
        <div class="flex flex-col xl:flex-row xl:items-start xl:gap-6">
          <!-- Main content -->
          <div class="xl:w-8/12">
            <span class="app-icon-wrap relative left-[7px] float-left mr-[38px] mb-[10px]">
              <img
                src="/img/google-sheets-orders-sync-70.png"
                alt="Google Sheets Orders Sync icon"
              />
            </span>
            <h5 class="text-body text-[16px] font-normal leading-[18.51px]">
              Keep a live copy of your store's orders inside Google Sheets. As
              soon as an order is placed or changed in Shopify, its details land
              in your spreadsheet on their own — so the figures your team relies
              on are never stale and you never touch an export file again.
            </h5>

            <div class="mt-[17px]">
              <ul class="list-disc pl-[26px]">
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Hands-off syncing — fresh orders appear in your sheet
                  automatically, with no downloads or imports to run.
                </li>
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Edits stay in step — adjust an order in Shopify and the same
                  row in your sheet rewrites itself to match.
                </li>
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Up and running in about a minute — paste your sheet's link,
                  share it with our service account, and you're finished.
                </li>
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Not a line of code required — everything is handled from one
                  simple settings screen, no developer involved.
                </li>
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Built entirely around Google Sheets, so your data is instantly
                  shareable with staff, suppliers or your accountant.
                </li>
                <li class="pb-[15px] text-body text-[16px] font-normal leading-[18.51px]">
                  Perfect for daily reporting, automatic backups, and piping
                  order data into the rest of your business tools.
                </li>
              </ul>
            </div>

            <h2 class="font-bold text-[20px] leading-[23.14px] text-body">
              How it works
            </h2>
            <div class="mt-[15px]">
              <ul class="list-disc pl-[26px]">
                <li class="text-body text-[16px] font-normal leading-[18.51px]">
                  Open the app and paste the link of the Google Sheet you want
                  to fill.
                </li>
                <li class="text-body text-[16px] font-normal leading-[18.51px]">
                  Share that sheet with the email address the app shows you,
                  giving it editor access.
                </li>
                <li class="text-body text-[16px] font-normal leading-[18.51px]">
                  Carry on selling — every new and updated order flows into the
                  sheet by itself.
                </li>
              </ul>
            </div>

            <h2 class="font-bold text-[20px] leading-[23.14px] text-body mt-4">
              Simple pricing
            </h2>
            <p class="text-body text-[16px] font-normal leading-[18.51px]">
              $4.90 per month with a 7-day free trial. Billed every 30 days in
              USD — cancel whenever you like.
            </p>
          </div>

          <!-- App Store sidebar (desktop only) -->
          <div class="hidden xl:block xl:w-4/12">
            <div class="bg-black w-[364px] rounded-[10px] relative py-[42px] px-[16px]">
              <h2 class="text-[28px] font-bold leading-[32px] text-white mb-[28px]">
                Available on the Shopify App Store
              </h2>
              <div class="w-full h-[53px] text-center">
                <a
                  :href="appStoreUrl"
                  target="_blank"
                  rel="noopener"
                  class="block w-full h-full bg-pink text-white no-underline rounded-[5px] hover:bg-pink-dark"
                >
                  <span
                    class="uppercase relative font-bold text-[24px] leading-[27.77px] top-[11px]"
                    >Get app</span
                  >
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>
