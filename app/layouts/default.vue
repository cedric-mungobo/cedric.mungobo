<template>
  <div class="min-h-screen bg-white">
    <!-- Navigation -->
    <nav class="fixed top-0 left-0 right-0 z-50 bg-white/95 backdrop-blur-sm ">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-16 w-full">
          <!-- Name  -->
          <div class="text-lg sm:text-xl md:text-2xl font-bold text-gray-900 shrink-0 z-10">
            Cedric Mungobo
          </div>
          
          <!-- Center: Navigation Links (desktop only) -->
          <div class="hidden md:flex items-center space-x-8 absolute left-1/2 transform -translate-x-1/2">
            <a href="#about" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">À propos</a>
            <a href="#services" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Services</a>
            <a href="#projects" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Projets</a>
            <a href="#experience" class="text-gray-700 hover:text-gray-900 transition-colors text-sm font-medium">Expériences</a>
          </div>
          
          <!-- Right: Contact Button (desktop) + Burger Menu (mobile) -->
          <div class="flex items-center gap-2 shrink-0">
            <a href="#contact" class="hidden md:flex items-center gap-2 border-2 border-primary-400 bg-white text-gray-900 px-4 py-2 rounded-lg hover:bg-primary-400 hover:text-white transition-all text-sm font-medium">
              <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
              </svg>
              Me Contacter
            </a>
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
            <a href="#about" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">À propos</a>
            <a href="#services" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Services</a>
            <a href="#projects" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Projets</a>
            <a href="#experience" @click="mobileMenuOpen = false" class="text-gray-700 hover:text-gray-900 transition-colors">Expériences</a>
            <a href="#contact" @click="mobileMenuOpen = false" class="border-2 border-primary-400 bg-white text-gray-900 px-4 py-2 rounded-lg hover:bg-primary-400 hover:text-white transition-all text-center">Me Contacter</a>
          </div>
        </div>
      </div>
    </nav>
    
    <slot/>
  </div>
</template>

<script lang="ts" setup>
const mobileMenuOpen = ref(false)
</script>

<style>

</style>