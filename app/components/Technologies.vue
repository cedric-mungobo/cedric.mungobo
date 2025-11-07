<template>
  <section id="technologies" class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-7xl mx-auto">
      <div class="text-center mb-12">
        <h2 v-motion-fade-bottom class="text-4xl font-bold text-gray-900 mb-4">Technologies</h2>
        <p 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="100"
          class="text-lg text-gray-600"
        >
          Langages, frameworks et outils que je maîtrise
        </p>
      </div>
      
      <!-- Langages -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="200"
        class="mb-12"
      >
        <h3 class="text-2xl font-bold text-gray-900 mb-6">Langages</h3>
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-4">
          <div 
            v-for="(lang, index) in langages" 
            :key="lang.name"
            v-motion
            :initial="{ opacity: 0, y: 30 }"
            :visible="{ opacity: 1, y: 0 }"
            :delay="300 + (index * 50)"
            class="group bg-white border border-gray-200 rounded-lg p-6 hover:shadow-lg hover:-translate-y-1 transition-all duration-300 hover:border-primary-400/50 text-center"
          >
            <div 
              class="inline-flex items-center justify-center w-16 h-16 rounded-lg mb-3 group-hover:scale-110 transition-transform duration-300"
              :class="lang.color"
            >
              <span class="text-2xl font-bold text-white">{{ lang.badge }}</span>
            </div>
            <p class="text-gray-900 font-semibold">{{ lang.name }}</p>
          </div>
        </div>
      </div>

      <!-- Frameworks -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="600"
        class="mb-12"
      >
        <h3 class="text-2xl font-bold text-gray-900 mb-6">Frameworks & Bibliothèques</h3>
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-4">
          <div 
            v-for="(framework, index) in frameworks" 
            :key="framework.name"
            v-motion
            :initial="{ opacity: 0, y: 30 }"
            :visible="{ opacity: 1, y: 0 }"
            :delay="700 + (index * 50)"
            class="group bg-white border border-gray-200 rounded-lg p-6 hover:shadow-lg hover:-translate-y-1 transition-all duration-300 hover:border-primary-400/50 text-center"
          >
            <div 
              class="inline-flex items-center justify-center w-16 h-16 rounded-lg mb-3 group-hover:scale-110 transition-transform duration-300"
              :class="framework.color"
            >
              <span class="text-2xl font-bold text-white">{{ framework.badge }}</span>
            </div>
            <p class="text-gray-900 font-semibold">{{ framework.name }}</p>
          </div>
        </div>
      </div>

      <!-- Outils -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="1000"
      >
        <h3 class="text-2xl font-bold text-gray-900 mb-6">Outils & Plateformes</h3>
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-4">
          <div 
            v-for="(outil, index) in outils" 
            :key="outil.name"
            v-motion
            :initial="{ opacity: 0, y: 30 }"
            :visible="{ opacity: 1, y: 0 }"
            :delay="1100 + (index * 50)"
            class="group bg-white border border-gray-200 rounded-lg p-6 hover:shadow-lg hover:-translate-y-1 transition-all duration-300 hover:border-primary-400/50 text-center"
          >
            <div 
              class="inline-flex items-center justify-center w-16 h-16 rounded-lg mb-3 group-hover:scale-110 transition-transform duration-300"
              :class="outil.color"
            >
              <span class="text-2xl font-bold text-white">{{ outil.badge }}</span>
            </div>
            <p class="text-gray-900 font-semibold">{{ outil.name }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts" setup>
interface Technology {
  name: string
  badge: string
  color: string
}

const langages: Technology[] = [
  { name: 'JavaScript', badge: 'JS', color: 'bg-yellow-500' },
  { name: 'TypeScript', badge: 'TS', color: 'bg-blue-600' },
  { name: 'PHP', badge: 'PHP', color: 'bg-indigo-600' },
  { name: 'Python', badge: 'PY', color: 'bg-blue-500' },
  { name: 'Dart', badge: 'DT', color: 'bg-blue-400' },
  { name: 'HTML/CSS', badge: 'HC', color: 'bg-orange-500' },
  { name: 'SQL', badge: 'SQL', color: 'bg-gray-600' }
]

const frameworks: Technology[] = [
  { name: 'Laravel', badge: 'LV', color: 'bg-red-600' },
  { name: 'Vue.js', badge: 'VUE', color: 'bg-green-500' },
  { name: 'Nuxt.js', badge: 'NU', color: 'bg-green-600' },
  { name: 'Flutter', badge: 'FL', color: 'bg-blue-400' },
  { name: 'Tailwind CSS', badge: 'TW', color: 'bg-cyan-500' },
  { name: 'Vite', badge: 'VT', color: 'bg-purple-600' }
]

const outils: Technology[] = [
  { name: 'Git', badge: 'GIT', color: 'bg-orange-600' },
  { name: 'VS Code', badge: 'VS', color: 'bg-blue-600' },
  { name: 'Figma', badge: 'FG', color: 'bg-purple-500' },
  { name: 'PostgreSQL', badge: 'PG', color: 'bg-blue-700' },
  { name: 'MySQL', badge: 'MY', color: 'bg-blue-600' },
  { name: 'Linux', badge: 'LN', color: 'bg-yellow-600' },
  { name: 'Nginx', badge: 'NG', color: 'bg-green-600' },
  { name: 'Windows Server', badge: 'WS', color: 'bg-blue-500' }
]
</script>

<style scoped>
</style>

