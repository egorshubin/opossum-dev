<script setup lang="ts">
const siteUrl = 'https://opossum-dev.com'
const appStoreUrl = 'https://apps.shopify.com/google-sheets-orders-sync'

useSeoMeta({
  title: 'Privacy Policy - Google Sheets Orders Sync',
  description:
    'How the Google Sheets Orders Sync Shopify app collects, uses, stores, and shares data — and the choices and rights available to merchants and their customers.',
  ogTitle: 'Privacy Policy - Google Sheets Orders Sync',
  ogDescription:
    'How the Google Sheets Orders Sync Shopify app collects, uses, stores, and shares data.',
  ogType: 'website',
  ogUrl: `${siteUrl}/google-sheets-orders-sync/privacy/`,
  robots: 'index, follow'
})

useHead({
  link: [{ rel: 'canonical', href: `${siteUrl}/google-sheets-orders-sync/privacy/` }]
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
          Google Sheets Orders Sync &middot; Last updated 14 June 2026
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
              (&ldquo;Opossum&rdquo;, &ldquo;we&rdquo;, &ldquo;us&rdquo; or
              &ldquo;our&rdquo;) collects, uses, stores, shares and protects
              information in connection with the
              <strong>Google Sheets Orders Sync</strong> application
              (the &ldquo;App&rdquo;) for the
              <a
                :href="appStoreUrl"
                target="_blank"
                rel="noopener"
                class="text-teal hover:underline"
              >Shopify platform</a>. It applies to the merchants who install the
              App (&ldquo;you&rdquo; or the &ldquo;merchant&rdquo;) and to the
              personal data contained in your store's orders, including data
              relating to your customers.
            </h5>

            <h2>1. Who we are</h2>
            <p>
              The App is operated by Opossum, located at Nikole Ljubibratića BB,
              85340 Herceg Novi, Montenegro. For any privacy question you can
              reach us at
              <a
                href="mailto:support@opossum-dev.com"
                class="text-teal hover:underline"
              >support@opossum-dev.com</a>. We are the data controller for the
              limited account and operational data we hold about merchants, and
              we act as a data processor on the merchant's behalf when we read
              order data from Shopify and write it into the merchant's Google
              Sheet.
            </p>

            <h2>2. What the App does</h2>
            <p>
              Google Sheets Orders Sync copies the orders in your Shopify store
              into a Google Sheet that you own and control. When an order is
              created or updated in Shopify, the App reads that order through
              Shopify's APIs and writes the corresponding row into the Google
              Sheet you have connected. Data flows from your Shopify store, to
              the App, and then to your Google Sheet — we do not sell or
              repurpose it.
            </p>

            <h2>3. Information we collect</h2>

            <h2 class="text-base">3.1 Information collected through Shopify's APIs</h2>
            <p>
              With the permissions you grant on install, the App reads order and
              store data through Shopify's APIs, including:
            </p>
            <ul>
              <li>
                Order details — order number, dates, line items, quantities,
                prices, totals, taxes, discounts, currency, fulfilment and
                financial status, and order notes.
              </li>
              <li>
                Customer information contained in an order — name, email
                address, phone number, and billing and shipping addresses.
              </li>
              <li>
                Order-related technical data exposed by Shopify, such as the
                browser IP address recorded on an order.
              </li>
              <li>
                Store and shop information needed to operate the App, such as
                your shop domain, store name, and the contact details of the
                store owner (name, email, phone and address).
              </li>
            </ul>
            <p>
              On first connection the App may read your recent order history
              (approximately the last 60 days) so your sheet starts with a
              meaningful baseline.
            </p>

            <h2 class="text-base">3.2 Information you provide directly</h2>
            <ul>
              <li>
                The link or identifier of the Google Sheet you want orders
                written to, and your App configuration (for example which fields
                or columns to sync).
              </li>
              <li>
                The Google account / service-account authorisation you grant so
                the App can write to your sheet.
              </li>
              <li>
                Any information you send us when you contact support.
              </li>
            </ul>

            <h2 class="text-base">3.3 Information about your customers</h2>
            <p>
              The App necessarily processes personal data about your customers
              because that data is part of the orders it syncs (see section 3.1).
              The App reads this data from Shopify and writes it into your Google
              Sheet at your instruction. We do not contact your customers and we
              do not use their personal data for our own purposes.
            </p>

            <h2 class="text-base">3.4 Automated logs and tracking technologies</h2>
            <p>
              To run the service reliably we generate automated technical logs —
              for example timestamps, the events processed, IP addresses, and
              error or diagnostic information. These logs help us deliver, secure
              and troubleshoot the App.
            </p>
            <p>
              The App itself does not drop advertising cookies on your customers'
              devices. Our marketing website (opossum-dev.com) uses a privacy
              analytics tool (Yandex Metrica) that may set cookies and record
              browser, operating-system and approximate-location information to
              measure site usage. You can block these cookies through your
              browser settings.
            </p>

            <h2>4. How we use the information</h2>
            <ul>
              <li>
                To provide the App's core function: reading your orders and
                writing them into your Google Sheet, in real time and on update.
              </li>
              <li>
                To configure, operate, secure, monitor and troubleshoot the
                service.
              </li>
              <li>
                To provide customer support and respond to your requests.
              </li>
              <li>
                To handle billing for the subscription through Shopify, and to
                comply with our legal obligations.
              </li>
            </ul>
            <p>
              We do not use the information for any purpose beyond providing and
              improving the App's services, and we do not sell personal data or
              use order or customer data for advertising.
            </p>

            <h2>5. How we share information</h2>
            <ul>
              <li>
                <strong>Google.</strong> Order data is written to the Google
                Sheet you connect, through Google's APIs. Once it is in your
                sheet it is governed by your own Google account and
                <a
                  href="https://policies.google.com/privacy"
                  target="_blank"
                  rel="noopener"
                  class="text-teal hover:underline"
                >Google's Privacy Policy</a>.
              </li>
              <li>
                <strong>Shopify.</strong> We access your data through Shopify
                under
                <a
                  href="https://www.shopify.com/legal/privacy"
                  target="_blank"
                  rel="noopener"
                  class="text-teal hover:underline"
                >Shopify's Privacy Policy</a>.
              </li>
              <li>
                <strong>Service providers.</strong> Hosting and infrastructure
                providers that process data on our behalf under appropriate
                confidentiality and data-protection terms.
              </li>
              <li>
                <strong>Legal.</strong> Where required by law, regulation, legal
                process, or to protect rights, safety and security.
              </li>
            </ul>
            <p>We do not sell, rent or trade personal data.</p>

            <h2>6. Data retention</h2>
            <p>
              <strong>We do not store your orders or customer data in our own
              database.</strong> This data goes directly to the Google Sheet
              that you own and control; the App only passes it through to deliver
              it there.
            </p>
            <p>
              We retain your App configuration (such as your shop domain and
              connected sheet) for as long as the App is installed, so the
              service can keep running. Order and customer data is processed to
              deliver it to your Google Sheet and is not retained by us beyond
              what is needed for that purpose and for short-term operational
              logs. The synced data lives in your own Google Sheet, under your
              control, for as long as you keep it there. When you uninstall the
              App we delete or de-identify the configuration and operational data
              associated with your store within 30 days, except where we must
              keep limited records to meet legal obligations. Data already
              written to your Google Sheet is unaffected by uninstalling and
              remains in your control.
            </p>

            <h2>7. Data storage and international transfers</h2>
            <p>
              Opossum is established in Montenegro, which is outside the European
              Economic Area (EEA). Depending on our hosting and service
              providers, your data may be stored or processed outside the country
              in which you or your customers are located, including outside the
              EEA. Where personal data of individuals in the EEA/UK is
              transferred, we rely on appropriate safeguards such as the European
              Commission's Standard Contractual Clauses.
            </p>

            <h2>8. Security</h2>
            <p>
              We use reasonable technical and organisational measures to protect
              the information we process, including encryption of data in transit
              and access controls that limit access to authorised personnel.
              Access tokens granted by Shopify and Google are stored securely and
              used only to operate the App. No method of transmission or storage
              is completely secure, so we cannot guarantee absolute security.
            </p>

            <h2>9. Your rights</h2>
            <p>
              Depending on where you live, you may have rights under laws such as
              the EU/UK General Data Protection Regulation (GDPR) and the
              California Consumer Privacy Act (CCPA), including the right to
              access, correct, delete, or port your personal data, to object to
              or restrict certain processing, and to opt out of the
              &ldquo;sale&rdquo; of personal information (we do not sell personal
              information). To exercise any of these rights, contact us at
              <a
                href="mailto:support@opossum-dev.com"
                class="text-teal hover:underline"
              >support@opossum-dev.com</a>.
            </p>
            <p>
              Because much of the data we process belongs to your store, requests
              from your customers should generally be directed to you as the
              merchant; we will assist you in fulfilling them as your data
              processor.
            </p>

            <h2>10. Shopify data-protection requests</h2>
            <p>
              We honour Shopify's mandatory data-protection webhooks. When a
              customer asks a merchant to view or delete their data, or when a
              merchant uninstalls the App, Shopify notifies us and we respond by
              providing or erasing the relevant data as required, in line with
              applicable law.
            </p>

            <h2>11. Children</h2>
            <p>
              The App is intended for use by businesses and is not directed to
              children. We do not knowingly collect personal data directly from
              children.
            </p>

            <h2>12. Changes to this policy</h2>
            <p>
              We may update this Privacy Policy from time to time. When we do, we
              will revise the &ldquo;Last updated&rdquo; date above and, where
              appropriate, notify merchants. Continued use of the App after an
              update means you accept the revised policy.
            </p>

            <h2>13. Contact us</h2>
            <p>
              If you have any questions about this Privacy Policy or how we handle
              data, contact:
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
