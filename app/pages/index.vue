<template>
  <div>
    <!-- Hero Section -->
    <HeroSection />

    <!-- Mes Projets Section -->
    <MesProjets />

    <!-- Mes Services Section -->
    <MesServices />

    <!-- Contact Section -->
    <ContactSection />

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-8 px-4 sm:px-6 lg:px-8">
      <div class="max-w-7xl mx-auto text-center">
        <p class="text-gray-400">© 2025 Cedric Mungobo. Tous droits réservés.</p>
      </div>
    </footer>
  </div>
</template>

<script lang="ts" setup>
const services = [
  {
    icon: '💻',
    title: 'Développement web & mobile',
    description: 'Des applications modernes, performantes et sur mesure pensées pour offrir une expérience fluide et intuitive.'
  },
  {
    icon: '🚀',
    title: 'Déploiement & intégration',
    description: 'Mise en ligne professionnelle sur Laravel Cloud, Vercel et autres plateformes. Automatisation, sécurité et performance au cœur de chaque projet.'
  },
  {
    icon: '💡',
    title: 'Création de solutions SaaS',
    description: "De l'idée au produit fini : je t'accompagne dans la conception, le développement et la mise sur le marché de ton SaaS ou de ton MVP."
  }
]

const projects = [
  {
    title: 'Projet 1',
    description: 'Application web moderne avec React et Node.js',
    tech: ['React', 'Node.js', 'MongoDB']
  },
  {
    title: 'Projet 2',
    description: 'Application mobile Flutter pour iOS et Android',
    tech: ['Flutter', 'Dart', 'Firebase']
  },
  {
    title: 'Projet 3',
    description: 'Plateforme SaaS avec Laravel et Vue.js',
    tech: ['Laravel', 'Vue.js', 'PostgreSQL']
  }
]

const experiences = [
  {
    title: 'Lead Développeur',
    company: 'Tinitz',
    location: 'Cocody, Abidjan, Côte d\'Ivoire',
    period: '2023 - Présent'
  },
  {
    title: 'Consultant Développeur Freelance',
    company: 'ConsultingIot',
    location: 'Paris, France',
    period: '2024 - 2025'
  },
  {
    title: 'Développeur Web FullStack',
    company: 'Tinitz',
    location: 'Cocody, Abidjan, Côte d\'Ivoire',
    period: '2021 - 2023'
  },
  {
    title: 'Développeur Desktop',
    company: 'Direction Générale des Hydrocarbures',
    location: 'Vridi, Abidjan, Côte d\'Ivoire',
    period: '2019 - 2020'
  }
]
</script>

<style>
html {
  scroll-behavior: smooth;
}
</style>