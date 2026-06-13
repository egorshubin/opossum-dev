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
          class="min-h-[300px] mt-0 mb-[69px] md:mt-[15px] max-[1000px]:mb-[-90px] max-[453px]:mb-[-50px] bg-no-repeat bg-right min-[1001px]:bg-[url('/img/first-visit-header.svg')]"
        >
          <h1
            class="font-bold text-[42px] leading-[50px] min-[541px]:text-[56px] min-[541px]:leading-[66px] min-[1001px]:pt-[55px]"
          >
            Apps for Shopify
          </h1>
          <div
            class="mt-[26px] min-[1001px]:mt-[46px] font-bold text-[28px] leading-[34px] min-[541px]:text-[34px] min-[541px]:leading-[40px]"
          >
            <h3>For Successful<br />E-Commerce</h3>
          </div>
        </div>
      </div>
    </section>

    <!-- App listing -->
    <section class="mb-[60px]">
      <div class="container-x">
        <div class="mb-[20px]">
          <h2
            class="uppercase font-bold text-[32px] leading-[0.6] pl-[21px] py-[18px] bg-no-repeat bg-[url('/img/stripe-blue.png')]"
          >
            Automation
          </h2>
        </div>
        <div class="flex flex-col xl:flex-row xl:items-start">
          <div
            class="mb-[15px] xl:mb-0 text-left xl:text-center xl:w-1/12 xl:ml-[8.333%]"
          >
            <span class="app-icon-wrap">
              <img
                src="/img/google-sheets-orders-sync-70.png"
                alt="Google Sheets Orders Sync icon"
              />
            </span>
          </div>
          <div class="xl:w-9/12">
            <h3 class="font-bold text-[20px] leading-[23.14px] mb-[25px]">
              Google Sheets Orders Sync
            </h3>
            <div class="text-body text-[16px] font-normal mb-[20px]">
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
                to="/google-sheets-orders-sync"
                class="inline-block w-[165px] h-[34px] text-center bg-body text-white no-underline text-[16px] font-bold leading-[34px] rounded-[5px] uppercase hover:bg-teal hover:text-white"
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
