<template>
  <div class="min-h-screen pt-24 pb-20">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <!-- Header -->
      <div class="text-center mb-12">
        <h1 v-motion-fade-bottom class="text-4xl md:text-5xl font-bold text-gray-900 mb-4">Tous mes projets</h1>
        <p 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="100"
          class="text-lg text-gray-600"
        >
          Des projets conçus avec passion, rigueur et sens du détail
        </p>
      </div>

      <!-- Back Button -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 30 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="150"
        class="mb-8"
      >
        <NuxtLink 
          to="/#projects" 
          class="inline-flex items-center gap-2 text-gray-700 hover:text-primary-400 transition-colors"
        >
          <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
          </svg>
          Retour à l'accueil
        </NuxtLink>
      </div>

      <!-- Projects Grid -->
      <div v-if="loading" class="text-center py-12">
        <p class="text-gray-600">Chargement des projets...</p>
      </div>

      <div v-else-if="projets.length === 0" class="text-center py-12">
        <p class="text-gray-600">Aucun projet trouvé.</p>
      </div>

      <div v-else class="grid md:grid-cols-2 lg:grid-cols-3 gap-2 md:gap-6">
        <div
          v-for="(projet, index) in projets" 
          :key="projet.title"
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="200 + (index * 50)"
        >
          <ProjetCard :projet="projet" />
        </div>
      </div>

      <!-- Contact CTA -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="1000"
        class="text-center mt-16"
      >
        <NuxtLink 
          to="/#contact" 
          class="inline-flex items-center gap-3 bg-primary-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-primary-500 transition-all text-base font-medium shadow-sm"
        >
          <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
          </svg>
          Discutons de votre projet
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
interface Projet {
  title: string
  description: string
  image: string
  link: string
  linkType?: 'site' | 'figma'
}

// Meta tags
useHead({
  title: 'Tous mes projets - Cedric Mungobo',
  meta: [
    { name: 'description', content: 'Découvrez tous mes projets de développement web et mobile' }
  ]
})

// Charger tous les projets depuis le fichier JSON
const projetsList = ref<Projet[]>([])
const loading = ref(true)

const loadProjets = async () => {
  try {
    const response = await fetch('/data/projets.json')
    if (!response.ok) throw new Error('Erreur lors du chargement')
    const data = await response.json()
    projetsList.value = data || []
  } catch (error) {
    console.error('Erreur lors du chargement des projets:', error)
    projetsList.value = []
  } finally {
    loading.value = false
  }
}

// Charger au montage du composant
onMounted(() => {
  loadProjets()
})

// Tous les projets (pas de limite)
const projets = computed(() => {
  if (!projetsList.value || !Array.isArray(projetsList.value)) {
    return []
  }
  return projetsList.value
})
</script>

<style scoped>
</style>

