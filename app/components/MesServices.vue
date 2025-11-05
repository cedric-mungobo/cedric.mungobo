<template>
  <section id="services" class="py-20 px-4 sm:px-6 lg:px-8 ">
    <div class="max-w-7xl mx-auto">
      <div class="text-center mb-12">
        <h2 v-motion-fade-bottom class="text-4xl font-bold text-gray-900 mb-4">Mes services</h2>
        <p 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="100"
          class="text-lg text-gray-600"
        >
          Des solutions sur mesure pour répondre à vos besoins
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div 
          v-for="(service, index) in services" 
          :key="service.title"
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :visible="{ opacity: 1, y: 0 }"
          :delay="200 + (index * 100)"
          class="group relative bg-white border border-gray-200 rounded-xl p-8 hover:shadow-xl hover:-translate-y-2 transition-all duration-300 hover:border-primary-400/50"
        >
          <!-- Icon -->
          <div class="text-5xl mb-6 group-hover:scale-110 transition-transform duration-300">
            {{ service.icon }}
          </div>
          
          <!-- Title -->
          <h3 class="text-xl font-bold text-gray-900 mb-4 group-hover:text-primary-500 transition-colors duration-300">
            {{ service.title }}
          </h3>
          
          <!-- Description -->
          <p class="text-gray-600 leading-relaxed">
            {{ service.description }}
          </p>
          
          <!-- Decorative element -->
          <div class="absolute top-0 right-0 w-20 h-20 bg-primary-400/5 rounded-bl-full opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts" setup>
interface Service {
  icon: string
  title: string
  description: string
}

const services: Service[] = [
  {
    icon: '💻',
    title: 'Développement web & mobile',
    description: 'Des sites qui représentent le mieux votre entreprise et des applications qui s\'adaptent mieux à la réalité. Solutions modernes et performantes sur mesure pour offrir une expérience fluide et intuitive.'
  },
  {
    icon: '💳',
    title: 'Déploiement & intégration',
    description: 'Mise en ligne professionnelle : VPS, hébergement, achat de nom de domaine (y compris les domaines .cd). Intégration des moyens de paiement (Mobile Money et carte Visa) dans vos plateformes. Automatisation, sécurité et performance au cœur de chaque projet.'
  },
  {
    icon: '💡',
    title: 'Création de solutions SaaS',
    description: "De l'idée au produit fini : je t'accompagne dans la conception, le développement et la mise sur le marché de ton SaaS ou de ton MVP."
  }
]
</script>

<style scoped>
</style>

