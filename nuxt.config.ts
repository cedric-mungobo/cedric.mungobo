// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  css: ['./app/assets/css/main.css'],
  
  modules: ['@vueuse/motion/nuxt', '@vueuse/nuxt'],

  runtimeConfig: {
    public: {
      motion: {
        directives: {
          'fade-bottom': {
            initial: {
              opacity: 0,
              y: 50,
            },
            visible: {
              opacity: 1,
              y: 0,
            },
            once: true,
          }
        }
      }
    }
  },

  vite: {
    plugins: [
      tailwindcss(),
    ],
  },
  
})