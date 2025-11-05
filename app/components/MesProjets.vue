<template>
  <section id="projects" class=" px-4 sm:px-6 lg:px-8 ">
    <div class="max-w-7xl mx-auto">
      <div class="text-center mb-12">
        <h2 v-motion-fade-bottom class="text-4xl font-bold text-gray-900 mb-4">Mes projets</h2>
        <p 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="100"
          class="text-lg text-gray-600"
        >
          Des projets conçus avec passion, rigueur .
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-2 md:gap-6">
        <div
          v-for="(projet, index) in projets" 
          :key="projet.title"
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="200 + (index * 100)"
        >
          <ProjetCard :projet="projet" />
        </div>
      </div>
      
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="800"
        class="text-center my-12"
      >
        <a 
          href="#contact" 
          class="inline-flex items-center gap-2 text-gray-900 hover:text-primary-400 font-semibold transition-colors"
        >
          Voir tous les projets
          <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
          </svg>
        </a>
      </div>
    </div>
  </section>
</template>

<script lang="ts" setup>
interface Projet {
  title: string
  description: string
  image: string
  link: string
  linkType?: 'site' | 'figma'
}

// Charger les projets depuis le fichier JSON avec fetch
const projetsList = ref<Projet[]>([])

const loadProjets = async () => {
  try {
    const response = await fetch('/data/projets.json')
    if (!response.ok) throw new Error('Erreur lors du chargement')
    const data = await response.json()
    projetsList.value = data || []
  } catch (error) {
    console.error('Erreur lors du chargement des projets:', error)
    projetsList.value = []
  }
}

// Charger au montage du composant
onMounted(() => {
  loadProjets()
})

// Récupérer seulement les 6 premiers projets
const projets = computed(() => {
  if (!projetsList.value || !Array.isArray(projetsList.value)) {
    return []
  }
  return projetsList.value.slice(0, 6)
})
</script>

<style scoped>
</style>

