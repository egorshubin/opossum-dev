<script setup lang="ts">
const siteUrl = 'https://opossum-dev.com'

useSeoMeta({
  title: 'Opossum Dev - Shopify Apps',
  description:
    'Opossum Dev builds apps for Shopify that automate the busywork of running a store — starting with Google Sheets Orders Sync.',
  ogTitle: 'Opossum Dev - Shopify Apps',
  ogDescription:
    'Apps for Shopify, for successful e-commerce. Automate your store with Opossum Dev.',
  ogType: 'website',
  ogUrl: `${siteUrl}/`
})

useHead({
  link: [{ rel: 'canonical', href: `${siteUrl}/` }],
  script: [
    {
      // Yandex.Metrika counter
      key: 'yandex-metrika',
      innerHTML: `(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};m[i].l=1*new Date();for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");ym(91277177, "init", {clickmap:true,trackLinks:true,accurateTrackBounce:true,webvisor:true});`
    }
  ],
  noscript: [
    {
      innerHTML:
        '<div><img src="https://mc.yandex.ru/watch/91277177" style="position:absolute; left:-9999px;" alt="" /></div>'
    }
  ]
})
</script>

<template>
  <div>
    <!-- Hero -->
    <section>
      <div class="container-x">
        <div
          class="min-h-72 max-sm:min-h-0 mt-0 mb-16 md:mt-4 max-lg:-mb-24 max-sm:mb-14 bg-no-repeat bg-right lg:bg-[url('/img/first-visit-header.svg')]"
        >
          <h1
            class="font-bold text-5xl leading-tight sm:text-6xl lg:pt-14"
          >
            Apps for Shopify
          </h1>
          <div
            class="mt-7 lg:mt-12 font-bold text-3xl leading-tight sm:text-4xl"
          >
            <h3>For Successful<br />E-Commerce</h3>
          </div>
        </div>
      </div>
    </section>

    <!-- App listing -->
    <section>
      <div class="container-x">
        <div class="mb-5">
          <h2
            class="uppercase font-bold text-3xl leading-[0.6] pl-5 py-5 bg-no-repeat bg-[url('/img/stripe-blue.png')]"
          >
            Automation
          </h2>
        </div>
        <div class="flex flex-col xl:flex-row xl:items-start">
          <div
            class="mb-4 xl:mb-0 text-left xl:text-center xl:w-1/12 xl:ml-[8.333%]"
          >
            <span class="app-icon-wrap">
              <img
                src="/img/google-sheets-orders-sync-64.png"
                alt="Google Sheets Orders Sync icon"
              />
            </span>
          </div>
          <div class="xl:w-9/12">
            <h3 class="font-bold text-xl leading-tight mb-6">
              Google Sheets Orders Sync
            </h3>
            <div class="text-body text-base font-normal mb-5">
              <p>
                Send every Shopify order straight into a spreadsheet without
                lifting a finger. The moment a customer checks out — or an
                existing order is edited — the matching row in your Google Sheet
                is created or refreshed for you. No copy-paste, no manual
                exports, no scripts to keep alive.
              </p>
            </div>
            <div>
              <NuxtLink
                to="/google-sheets-orders-sync/"
                class="inline-flex items-center justify-center w-40 h-9 bg-body text-white no-underline text-base font-bold rounded-md uppercase hover:bg-teal hover:text-white"
              >
                Read more
              </NuxtLink>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>
