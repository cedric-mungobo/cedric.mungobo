<template>
  <section id="hero" class="relative pt-32 pb-20 px-4  max-w-4xl mx-auto  sm:px-6 lg:px-8 min-h-screen flex items-center overflow-hidden bg-white">
    <!-- Background Grid Pattern -->
    <div class="absolute inset-0 opacity-[0.04]" style="background-image: linear-gradient(rgba(0,0,0,0.08) 1px, transparent 1px), linear-gradient(90deg, rgba(0,0,0,0.08) 1px, transparent 1px); background-size: 50px 50px;"></div>
    
    <!-- Decorative Shapes -->
    <div class="absolute top-20 right-20 w-64 h-64 border-4 border-primary-400 rounded-full opacity-[0.08] blur-3xl"></div>
    <div class="absolute bottom-20 left-20 w-96 h-32 border-4 border-primary-400 opacity-[0.08] blur-3xl" style="border-radius: 50% 50% 50% 50% / 60% 60% 40% 40%;"></div>
    
    <!-- Animated Marker Icon (Top Right) - Organic curved shape -->
    <div class="absolute top-32 right-32 z-20 marker-icon">
      <svg class="w-24 h-24 text-primary-400" fill="none" viewBox="0 0 120 80" stroke="currentColor" stroke-width="2.5">
        <!-- Organic flowing curve shape -->
        <path d="M10,40 Q30,15 50,30 T90,25" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.9"/>
        <path d="M15,50 Q35,30 55,40 T95,35" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.8"/>
        <path d="M20,60 Q40,45 60,55 T100,50" stroke-linecap="round" stroke-linejoin="round" fill="none" opacity="0.7"/>
      </svg>
    </div>
    
    <div class="max-w-7xl mx-auto w-full relative z-10">
      <div class="grid md:grid-cols-3 gap-1 items-center">
        <!-- Left Side - Profile -->
        <div class="flex flex-col items-center md:items-start">
          <!-- Profile Picture with Primary Border -->
          <div class="relative mb-8">
            <div class="absolute -inset-3 rounded-full border-8 border-primary-400 transform rotate-12"></div>
            <div class="relative w-64 h-64 rounded-full overflow-hidden bg-gray-200 ring-4 ring-white shadow-lg">
              <picture>
                <source srcset="/images/profil_compressed.jpg" type="image/jpeg">
                <img
                  src="/images/profil_compressed.jpg"
                  alt="Cedric Mungobo"
                  class="w-full h-full object-cover transition-transform duration-300 hover:scale-105"
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
        <div class="text-center md:text-left md:col-span-3">
          <h1 class="text-5xl md:text-6xl lg:text-7xl font-bold text-gray-900 mb-4" style="font-family: 'Inter', -apple-system, sans-serif; font-weight: 700; letter-spacing: -0.03em;">
            Je suis Cedric Mungobo,
          </h1>
          <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold text-gray-900 mb-6 font-mono" style="letter-spacing: -0.02em;">
            Développeur Web & Mobile
          </h2>
          
          <p class="text-base md:text-lg text-gray-600 leading-relaxed mb-8 max-w-2xl">
            En tant que développeur web orienté back-end avec une ouverture sur le front-end et le mobile, 
            je suis passionné par les technologies et l'innovation. Curieux, adaptable et rigoureux, 
            je mets mes compétences au service de projets ambitieux, en alliant performance technique et esprit d'équipe.
          </p>
          
          <a 
            href="#contact" 
            class="inline-flex items-center gap-3 bg-primary-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-primary-500 transition-all text-base font-medium shadow-sm"
          >
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
            </svg>
            Discutons de votre projet
          </a>
        </div>
      </div>
      
      <!-- Technology Logos Section -->
      <div class="mt-20 pt-12 border-t border-gray-200">
        <div class="flex flex-wrap justify-center items-center gap-8 md:gap-12">
          <div class="tech-logo" title="Laravel">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M128 0L0 128L128 256L256 128L128 0Z" fill="#FF2D20"/>
              <path d="M128 32L32 128L128 224L224 128L128 32Z" fill="#FF2D20" opacity="0.8"/>
            </svg>
          </div>
          <div class="tech-logo" title="Flutter">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none">
              <path d="M128 0L0 128L128 256L256 128L128 0Z" fill="#02569B"/>
              <path d="M128 64L64 128L128 192L192 128L128 64Z" fill="#027DFD"/>
            </svg>
          </div>
          <div class="tech-logo" title="Vue.js">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none">
              <path d="M128 0L0 128L128 256L256 128L128 0Z" fill="#4FC08D"/>
              <path d="M128 32L32 128L128 224L224 128L128 32Z" fill="#35495E"/>
            </svg>
          </div>
          <div class="tech-logo" title="Nuxt.js">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none">
              <circle cx="128" cy="128" r="100" fill="#00DC82"/>
              <circle cx="128" cy="128" r="60" fill="#18181B"/>
            </svg>
          </div>
          <div class="tech-logo" title="Docker">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none">
              <path d="M128 0L0 128L128 256L256 128L128 0Z" fill="#2496ED"/>
              <path d="M128 40L40 128L128 216L216 128L128 40Z" fill="#2496ED" opacity="0.8"/>
            </svg>
          </div>
          <div class="tech-logo" title="Vite">
            <svg class="w-12 h-12" viewBox="0 0 256 256" fill="none">
              <path d="M128 0L0 128L128 256L256 128L128 0Z" fill="#646CFF"/>
              <path d="M128 32L32 128L128 224L224 128L128 32Z" fill="#FFC700"/>
            </svg>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts" setup>
const socialLinks = [
  {
    name: 'Facebook',
    icon: 'f',
    url: '#'
  },
  {
    name: 'LinkedIn',
    icon: 'in',
    url: '#'
  },
  {
    name: 'Email',
    icon: '✉',
    url: 'mailto:patrick.aime.714@gmail.com'
  },
  {
    name: 'Phone',
    icon: '📞',
    url: 'tel:+2250708377751'
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

/* Technology Logos */
.tech-logo {
  transition: transform 0.3s ease, opacity 0.3s ease;
  opacity: 0.8;
}

.tech-logo:hover {
  transform: scale(1.1);
  opacity: 1;
}

.tech-logo svg {
  filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.1));
}
</style>
