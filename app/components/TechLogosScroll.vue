<template>
  <div class="tech-logos-section mt-20 pt-12 border-t border-gray-200 overflow-hidden">
    <div class="tech-logos-scroll">
      <div class="tech-logos-track">
        <!-- Render logos twice for seamless infinite scroll -->
        <template v-for="i in 2" :key="i">
          <div v-for="logo in techLogos" :key="`${logo.name}-${i}`" class="tech-logo" :title="logo.name">
            <component :is="logo.component" />
          </div>
        </template>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
import { h } from 'vue'

// Define logos as render functions
const techLogos = [
  {
    name: 'Laravel',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none', xmlns: 'http://www.w3.org/2000/svg' }, [
      h('path', { d: 'M128 0L0 128L128 256L256 128L128 0Z', fill: '#FF2D20' }),
      h('path', { d: 'M128 32L32 128L128 224L224 128L128 32Z', fill: '#FF2D20', opacity: '0.8' })
    ])
  },
  {
    name: 'Flutter',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none' }, [
      h('path', { d: 'M128 0L0 128L128 256L256 128L128 0Z', fill: '#02569B' }),
      h('path', { d: 'M128 64L64 128L128 192L192 128L128 64Z', fill: '#027DFD' })
    ])
  },
  {
    name: 'Vue.js',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none' }, [
      h('path', { d: 'M128 0L0 128L128 256L256 128L128 0Z', fill: '#4FC08D' }),
      h('path', { d: 'M128 32L32 128L128 224L224 128L128 32Z', fill: '#35495E' })
    ])
  },
  {
    name: 'Nuxt.js',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none' }, [
      h('circle', { cx: '128', cy: '128', r: '100', fill: '#00DC82' }),
      h('circle', { cx: '128', cy: '128', r: '60', fill: '#18181B' })
    ])
  },
  {
    name: 'Docker',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none' }, [
      h('path', { d: 'M128 0L0 128L128 256L256 128L128 0Z', fill: '#2496ED' }),
      h('path', { d: 'M128 40L40 128L128 216L216 128L128 40Z', fill: '#2496ED', opacity: '0.8' })
    ])
  },
  {
    name: 'Vite',
    component: () => h('svg', { class: 'w-12 h-12', viewBox: '0 0 256 256', fill: 'none' }, [
      h('path', { d: 'M128 0L0 128L128 256L256 128L128 0Z', fill: '#646CFF' }),
      h('path', { d: 'M128 32L32 128L128 224L224 128L128 32Z', fill: '#FFC700' })
    ])
  }
]
</script>

<style scoped>
/* Technology Logos Infinite Scroll */
.tech-logos-scroll {
  overflow: hidden;
  width: 100%;
  position: relative;
}

.tech-logos-track {
  display: flex;
  align-items: center;
  gap: 3rem;
  animation: scroll-logos 30s linear infinite;
  will-change: transform;
}

.tech-logos-track:hover {
  animation-play-state: paused;
}

@keyframes scroll-logos {
  0% {
    transform: translateX(0);
  }
  100% {
    transform: translateX(-50%);
  }
}

.tech-logo {
  flex-shrink: 0;
  transition: transform 0.3s ease, opacity 0.3s ease;
  opacity: 0.8;
}

.tech-logo:hover {
  transform: scale(1.2);
  opacity: 1;
}

.tech-logo svg {
  filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.1));
}
</style>

