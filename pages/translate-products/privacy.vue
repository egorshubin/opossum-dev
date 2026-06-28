<script setup lang="ts">
const siteUrl = 'https://opossum-dev.com'

useSeoMeta({
  title: 'Privacy Policy - Opossum: Translate Products',
  description:
    'How the Opossum: Translate Products Shopify app handles store information, product content, API tokens, and operational logs — and the choices and rights available to merchants.',
  ogTitle: 'Privacy Policy - Opossum: Translate Products',
  ogDescription:
    'How the Opossum: Translate Products Shopify app handles store information, product content, API tokens, and operational logs.',
  ogType: 'website',
  ogUrl: `${siteUrl}/translate-products/privacy/`,
  robots: 'noindex, nofollow'
})

useHead({
  link: [{ rel: 'canonical', href: `${siteUrl}/translate-products/privacy/` }]
})
</script>

<template>
  <div>
    <!-- Title -->
    <section class="mt-0 md:mt-4 lg:mt-11">
      <div class="container-x">
        <h1 class="font-bold text-3xl sm:text-4xl leading-tight">
          Privacy Policy
        </h1>
        <p class="mt-3 text-muted text-base">
          Opossum: Translate Products &middot; Last updated 28 June 2026
        </p>
      </div>
    </section>

    <!-- Body -->
    <section class="relative mt-6">
      <div class="container-x">
        <article class="article">
          <div class="article-body max-w-3xl">
            <h5 class="article-lead">
              This Privacy Policy explains how Opossum
              (&ldquo;we&rdquo;, &ldquo;us&rdquo;, or &ldquo;our&rdquo;) handles
              information in connection with the
              <strong>Opossum: Translate Products</strong> application
              (the &ldquo;App&rdquo;) for Shopify. By installing or using the
              App, you agree to the practices described below.
            </h5>

            <p>
              Company: Opossum<br />
              Address: Nikole Ljubibratića BB, 85340 Herceg Novi, Montenegro<br />
              Contact:
              <a
                href="mailto:support@opossum-dev.com"
                class="text-teal hover:underline"
              >support@opossum-dev.com</a>
            </p>

            <h2>What the App does</h2>
            <p>
              Opossum: Translate Products helps Shopify merchants export
              translatable
              product content to CSV, re-import translated content, and import
              translations programmatically through a per-store API (including
              via automated or AI-assisted workflows). The App reads and writes
              product translation data only. It does not access orders,
              customers, payment information, or other personal data of your
              shoppers.
            </p>

            <h2>Information we collect</h2>
            <p>To provide the App, we process the following:</p>
            <ul>
              <li>
                <strong>Store information</strong> — your Shopify store domain,
                shop ID, and the access credentials issued by Shopify when you
                install the App.
              </li>
              <li>
                <strong>Product content</strong> — translatable product fields
                and metafields (such as titles, descriptions, SEO fields,
                handles, and metafield values) and their translated versions.
                This data is processed solely to perform the export and import
                you request.
              </li>
              <li>
                <strong>API authentication tokens</strong> — a per-store bearer
                token that you generate within the App to authenticate
                programmatic imports. You can regenerate or revoke this token at
                any time.
              </li>
              <li>
                <strong>Technical and operational logs</strong> — limited
                diagnostic information (such as timestamps, job status, and
                error messages) used to operate the service, ensure reliability,
                and provide support.
              </li>
            </ul>
            <p>
              We do not collect or process the personal data of your customers,
              and we do not request access to order or customer information.
            </p>

            <h2>How we use information</h2>
            <p>We use the information above only to:</p>
            <ul>
              <li>
                Operate the App's core functionality (export, import, and
                translation of product content).
              </li>
              <li>Authenticate and authorize API requests to your store.</li>
              <li>Maintain security, prevent abuse, and troubleshoot issues.</li>
              <li>Provide customer support when you contact us.</li>
            </ul>
            <p>
              We do not sell your data, share it for advertising, or use it for
              any purpose unrelated to providing the App.
            </p>

            <h2>Data storage and retention</h2>
            <p>
              The App processes product content transiently to carry out the
              import and export jobs you initiate. We do not maintain a permanent
              database of your product content. Translation data is held only as
              long as needed to complete a job and is not retained beyond
              delivery.
            </p>
            <p>
              We do store the minimum data required for the App to function —
              your Shopify session credentials and your per-store API token —
              for as long as the App remains installed. When you uninstall the
              App, this data is deleted within 30 days. You may also revoke
              access at any time by uninstalling the App or
              regenerating/removing your API token.
            </p>

            <h2>How we share information</h2>
            <p>We share information only as necessary to operate the service:</p>
            <ul>
              <li>
                <strong>Shopify</strong> — we use Shopify's APIs to read and
                write product translations on your behalf, in accordance with
                Shopify's terms.
              </li>
              <li>
                <strong>Infrastructure providers</strong> — we use trusted
                hosting and infrastructure providers to run the App. These
                providers process data on our behalf and under appropriate
                safeguards.
              </li>
              <li>
                <strong>Legal requirements</strong> — we may disclose
                information where required by law or to protect our rights,
                users, or the public.
              </li>
            </ul>
            <p>We do not share your information with any other third parties.</p>

            <h2>Security</h2>
            <p>
              We apply reasonable technical and organizational measures to
              protect the information we process, including encrypted
              connections, scoped access credentials, and restricted access to
              operational systems. No method of transmission or storage is
              completely secure, but we work to safeguard your data against
              unauthorized access, alteration, or disclosure.
            </p>

            <h2>Your rights</h2>
            <p>
              Depending on your jurisdiction (including under the GDPR and
              CCPA), you may have the right to access, correct, delete, or port
              the information we hold about you, and to object to or restrict
              certain processing. To exercise these rights, contact us at
              <a
                href="mailto:support@opossum-dev.com"
                class="text-teal hover:underline"
              >support@opossum-dev.com</a>. We also honor Shopify's mandatory
              data-protection (data request, customer redact, and shop redact)
              webhooks.
            </p>
            <p>
              Because the App does not process your customers' personal data,
              any requests relating to shopper information should be directed to
              the merchant operating the store.
            </p>

            <h2>Changes to this policy</h2>
            <p>
              We may update this Privacy Policy from time to time. Material
              changes will be reflected by updating the &ldquo;Last
              updated&rdquo; date above. Your continued use of the App after
              changes take effect constitutes acceptance of the revised policy.
            </p>

            <h2>Contact</h2>
            <p>
              If you have questions about this Privacy Policy or how we handle
              your data, contact us at:
            </p>
            <p>
              Opossum<br />
              Nikole Ljubibratića BB<br />
              85340 Herceg Novi, Montenegro<br />
              <a
                href="mailto:support@opossum-dev.com"
                class="text-teal hover:underline"
              >support@opossum-dev.com</a>
            </p>
          </div>
        </article>
      </div>
    </section>
  </div>
</template>
