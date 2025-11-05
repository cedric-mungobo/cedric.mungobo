<template>
  <section id="hero" class="relative pt-24 md:pt-32 pb-20 px-4 sm:px-6 lg:px-8 min-h-screen flex items-center overflow-hidden ">
    <!-- Background Grid Pattern -->
    <div class="absolute inset-0 opacity-[0.04]" style="background-image: linear-gradient(rgba(0,0,0,0.08) 1px, transparent 1px), linear-gradient(90deg, rgba(0,0,0,0.08) 1px, transparent 1px); background-size: 50px 50px;"></div>
    
    <!-- Decorative Shapes -->
    <div class="absolute top-10 right-10 md:top-20 md:right-20 w-48 h-48 md:w-64 md:h-64 border-4 border-primary-400 rounded-full opacity-[0.08] blur-3xl"></div>
    <div class="absolute bottom-10 left-10 md:bottom-20 md:left-20 w-64 h-24 md:w-96 md:h-32 border-4 border-primary-400 opacity-[0.08] blur-3xl" style="border-radius: 50% 50% 50% 50% / 60% 60% 40% 40%;"></div>
    
    <!-- Animated Marker Icon (Top Right) - Organic curved shape -->
    <div class="absolute top-20 right-10 md:top-32 md:right-32 z-20 marker-icon hidden md:block">
      <svg class="w-16 h-16 md:w-24 md:h-24 text-primary-400" fill="none" viewBox="0 0 120 80" stroke="currentColor" stroke-width="2.5">
        <!-- Organic flowing curve shape -->
        <path d="M10,40 Q30,15 50,30 T90,25" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.9"/>
        <path d="M15,50 Q35,30 55,40 T95,35" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.8"/>
        <path d="M20,60 Q40,45 60,55 T100,50" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.7"/>
      </svg>
    </div>
    
    <div class="max-w-5xl mx-auto w-full relative z-10">
      <div class="grid md:grid-cols-3 gap-4 items-center">
        <!-- Left Side - Profile -->
        <div v-motion-fade-bottom class="flex flex-col items-center md:items-start">
          <!-- Profile Picture with Primary Border -->
          <div class="relative mb-8">
            <div class="absolute -inset-3 rounded-2xl border-8 border-primary-400 transform rotate-12"></div>
            <div class="relative w-48 h-48 md:w-64 md:h-64 rounded-2xl overflow-hidden bg-primary-200 ring-4 ring-white shadow-lg">
              <picture>
                <source srcset="/images/profil_compressed.jpg" type="image/jpeg">
                <img
                  src="/images/profil_compressed.jpg"
                  alt="Cedric Mungobo"
                  class="w-full h-full object-cover object-top transition-transform duration-300 hover:scale-105"
                  loading="lazy"
                  width="800"
                  height="1000"
                >
              </picture>
            </div>
          </div>
          
          <!-- Social Media Icons -->
          <div class="flex gap-3 mb-6">
            <a 
              v-for="social in socialLinks" 
              :key="social.name"
              :href="social.url" 
              target="_blank"
              class="w-10 h-10 rounded-full border-2 border-primary-400 bg-white flex items-center justify-center hover:bg-primary-400 hover:text-white transition-colors text-gray-900 font-semibold shadow-sm"
              :title="social.name"
            >
              <span class="text-xs font-bold">{{ social.icon }}</span>
            </a>
          </div>
          
          <!-- Location -->
          <div class="flex items-center gap-2 text-gray-600 text-sm">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
            </svg>
            <span>Congo Kinshasa</span>
          </div>
        </div>
        
        <!-- Right Side - Content -->
        <div 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="200"
          class="text-center md:text-left md:col-span-2"
        >
          <h1 class="text-3xl md:text-4xl lg:text-5xl font-bold text-gray-900 mb-4" style="font-family: 'Inter', -apple-system, sans-serif; font-weight: 700; letter-spacing: -0.03em;">
            Je suis Cedric Mungobo,
          </h1>
          <h2 class="text-2xl md:text-3xl lg:text-3xl font-bold text-gray-900 mb-6 font-mono" style="letter-spacing: -0.02em;">
            Ingénieur logiciel
          </h2>
          
          <p class="text-base md:text-lg text-gray-600 leading-relaxed mb-8 max-w-2xl">
            Passionné par la programmation et le développement, je crée des solutions informatiques sur mesure : 
            sites web, applications mobiles, applications desktop et applications web.
          </p>
          
          <p class="text-base md:text-lg text-gray-600 leading-relaxed mb-8 max-w-2xl">
            Avec plus de 4 ans d'expérience et plus de 20 projets réalisés, je conçois et développe des solutions 
            adaptées aux besoins spécifiques des entreprises et des particuliers. Ma passion pour l'apprentissage 
            continu me pousse à rester à jour avec les dernières technologies et frameworks du secteur.
          </p>
          
          <NuxtLink 
            to="#contact" 
            class="inline-flex items-center gap-3 bg-primary-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-primary-500 transition-all text-base font-medium shadow-sm"
          >
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
            </svg>
            Discutons de votre projet
          </NuxtLink>
        </div>
      </div>
      
      <!-- Technology Logos Section with Infinite Scroll -->
      <div 
        v-motion
        :initial="{ opacity: 0, y: 50 }"
        :visible="{ opacity: 1, y: 0 }"
        :delay="400"
      >
        <TechLogosScroll />
      </div>
    </div>
  </section>
</template>

<script lang="ts" setup>
const socialLinks = [
  {
    name: 'Facebook',
    icon: 'f',
    url: 'https://web.facebook.com/cedric.mungobo'
  },
  {
    name: 'LinkedIn',
    icon: 'in',
    url: 'https://www.linkedin.com/in/cedric-mungobo-ab7728215/'
  },
  {
    name: 'Email',
    icon: '✉',
    url: 'mailto:sedrickmungobo1@gmail.com'
  },
  {
    name: 'Phone',
    icon: '📞',
    url: 'tel:+243826785727'
  }
]
</script>

<style scoped>
/* Custom font for monospace look */
.font-mono {
  font-family: 'Courier New', 'Monaco', 'Menlo', monospace;
  letter-spacing: -0.02em;
}

/* Animated Marker Icon */
.marker-icon {
  animation: float 3s ease-in-out infinite;
}

@keyframes float {
  0%, 100% {
    transform: translateY(0px) translateX(0px);
    opacity: 0.8;
  }
  25% {
    transform: translateY(-10px) translateX(5px);
    opacity: 1;
  }
  50% {
    transform: translateY(-5px) translateX(-5px);
    opacity: 0.9;
  }
  75% {
    transform: translateY(-15px) translateX(3px);
    opacity: 1;
  }
}

/* Alternative: Sliding animation for marker */
@keyframes slide {
  0% {
    transform: translateX(0) translateY(0);
    opacity: 0.6;
  }
  50% {
    transform: translateX(20px) translateY(-15px);
    opacity: 1;
  }
  100% {
    transform: translateX(0) translateY(0);
    opacity: 0.6;
  }
}

.marker-icon svg {
  animation: slide 4s ease-in-out infinite;
  filter: drop-shadow(0 2px 4px rgba(248, 113, 113, 0.3));
}

</style>
