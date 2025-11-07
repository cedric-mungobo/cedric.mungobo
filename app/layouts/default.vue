<template>
  <div class="min-h-screen  relative">
    <!-- Background Pattern -->
    <div class="absolute inset-0">
      <div class="absolute inset-0 opacity-[0.15]">
        <svg width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
          <pattern id="binary-pattern" x="0" y="0" width="100" height="100" patternUnits="userSpaceOnUse">
            <text x="0" y="10" font-size="10" fill="#3b82f6">10110101</text>
            <text x="20" y="20" font-size="10" fill="#3b82f6">01001010</text>
            <text x="0" y="30" font-size="10" fill="#3b82f6">11010010</text>
            <text x="20" y="40" font-size="10" fill="#3b82f6">00101101</text>
            <text x="0" y="50" font-size="10" fill="#a855f7">10110101</text>
            <text x="20" y="60" font-size="10" fill="#a855f7">01001010</text>
            <text x="0" y="70" font-size="10" fill="#3b82f6">11010010</text>
            <text x="20" y="80" font-size="10" fill="#3b82f6">00101101</text>
            <text x="0" y="90" font-size="10" fill="#3b82f6">10110101</text>
            <text x="20" y="100" font-size="10" fill="#3b82f6">01001010</text>
          </pattern>
          <rect width="100%" height="100%" fill="url(#binary-pattern)" />
        </svg>
      </div>
      <div class="absolute inset-0 bg-gradient-to-br from-white via-white/0 to-white" />
    </div>
    
    <!-- Navigation -->
    <nav class="fixed top-0 left-0 right-0 z-50 bg-white/95 backdrop-blur-sm border-b border-primary-50 ">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16 w-full">
          <!-- Name  -->
          <NuxtLink to="/#hero" class="flex items-center gap-2 text-lg sm:text-xl md:text-2xl font-bold text-gray-900 shrink-0 z-10 hover:text-primary-400 transition-colors">
            <svg class="w-5 h-5 sm:w-6 sm:h-6 text-primary-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
            </svg>
            <span>Cedric Mungobo</span>
          </NuxtLink>
          
          <!-- Center: Navigation Links (desktop only) -->
          <div class="hidden md:flex items-center space-x-8 absolute left-1/2 transform -translate-x-1/2">
            <NuxtLink to="/#hero" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Accueil</NuxtLink>
            <NuxtLink to="/projets" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Projets</NuxtLink>
            <NuxtLink to="/#services" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Services</NuxtLink>
          </div>
          
          <!-- Right: Contact Button (desktop) + Burger Menu (mobile) -->
          <div class="flex items-center gap-2 shrink-0">
            <NuxtLink to="/#contact" class="hidden md:flex items-center gap-2 border-2 border-primary-400 bg-white text-gray-900 px-4 py-2 rounded-lg hover:bg-primary-400 hover:text-white transition-all text-sm font-medium">
              <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
              </svg>
              Me Contacter
            </NuxtLink>
            <!-- Burger Menu (mobile only) -->
            <button @click="mobileMenuOpen = !mobileMenuOpen" class="md:hidden text-gray-700 p-2 -mr-2">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path v-if="!mobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
              </svg>
            </button>
          </div>
        </div>
        <!-- Mobile Menu -->
        <div v-if="mobileMenuOpen" class="md:hidden pb-4">
          <div class="flex flex-col space-y-4">
            <NuxtLink to="/#hero" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Accueil</NuxtLink>
            <NuxtLink to="/projets" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Projets</NuxtLink>
            <NuxtLink to="/#services" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Services</NuxtLink>
            <NuxtLink to="/#contact" @click="mobileMenuOpen = false" class="border-2 border-primary-400 bg-white text-gray-900 px-4 py-2 rounded-lg hover:bg-primary-400 hover:text-white transition-all text-center">Me Contacter</NuxtLink>
          </div>
        </div>
      </div>
    </nav>
    
    <div class="relative z-10">
      <slot/>
    </div>
  </div>
</template>

<script lang="ts" setup>
const mobileMenuOpen = ref(false)
</script>

<style>

</style>