<template>
  <div class="group relative flex flex-col my-6 bg-white shadow-sm border border-slate-200 rounded-lg w-full transition-all duration-300 hover:shadow-xl hover:-translate-y-2 hover:border-primary-400/50 cursor-pointer">
    <!-- Content - Title First -->
    <div class="p-4 pb-2">
      <!-- Title -->
      <div class="flex items-center mb-2">
        <h6 class="text-slate-800 text-xl font-semibold transition-colors duration-300 group-hover:text-primary-500">
          {{ projet.title }}
        </h6>
      </div>
    </div>
    
    <!-- Project Image -->
    <div class="relative h-56 m-2.5 overflow-hidden text-white rounded-md group">
      <img 
        :src="getImagePath(projet.image)" 
        :alt="projet.title"
        class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110"
        loading="lazy"
        @error="handleImageError"
      >
      <div class="absolute inset-0 bg-gradient-to-t from-black/20 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
    </div>
    
    <!-- Description -->
    <div class="px-4 pt-0">
      <p class="text-slate-600 leading-normal font-light">
        {{ projet.description }}
      </p>
    </div>
 
    <!-- Link Button -->
    <div class="px-4 pb-4 pt-0 mt-2">
      <a 
        :href="projet.link" 
        target="_blank"
        class="w-full rounded-md bg-slate-800 py-2 px-4 border border-transparent text-center text-sm text-white transition-all shadow-md hover:shadow-lg focus:bg-slate-700 focus:shadow-none active:bg-slate-700 hover:bg-slate-700 active:shadow-none block"
      >
        <span v-if="projet.linkType === 'figma'">Voir sur Figma</span>
        <span v-else>Voir le projet</span>
      </a>
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

const props = defineProps<{
  projet: Projet
}>()

// Helper function to get image path (prevents router warnings)
const getImagePath = (imagePath: string | undefined) => {
  if (!imagePath) return '/placeholder-project.jpg'
  // If it's already a full URL, return as is
  if (imagePath.startsWith('http')) return imagePath
  // For public assets, ensure they're treated as static files
  return imagePath.startsWith('/') ? imagePath : `/${imagePath}`
}

const handleImageError = (event: Event) => {
  const img = event.target as HTMLImageElement
  img.src = '/placeholder-project.jpg'
}
</script>

<style scoped>
</style>

