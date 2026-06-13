/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './components/**/*.{vue,js,ts}',
    './layouts/**/*.vue',
    './pages/**/*.vue',
    './app.vue',
    './nuxt.config.{js,ts}'
  ],
  theme: {
    extend: {
      fontFamily: {
        // Keep the "Play" font as the site typeface.
        play: ['Play', 'sans-serif'],
        sans: ['Play', 'sans-serif']
      },
      colors: {
        ink: '#000000',
        body: '#333333',
        muted: '#999999',
        teal: '#099CB3',
        pink: '#FF0076',
        'pink-dark': '#D00060'
      },
      maxWidth: {
        // Bootstrap-equivalent container widths (used by .container-x).
        'screen-sm': '540px',
        'screen-md': '720px',
        'screen-lg': '960px',
        'screen-xl': '1140px',
        'screen-2xl': '1320px'
      }
    }
  },
  plugins: []
}
