<template>
  <div>
    <!-- Hero Section -->
    <HeroSection />

    <!-- Mes Projets Section -->
    <MesProjets />

    <!-- Skills Section -->
    <section id="skills" class="py-20 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid grid-cols-3 md:grid-cols-6 lg:grid-cols-8 gap-8">
          <div v-for="skill in skills" :key="skill.name" class="flex flex-col items-center">
            <div class="w-16 h-16 bg-white rounded-lg shadow-md flex items-center justify-center mb-2">
              <span class="text-2xl">{{ skill.icon }}</span>
            </div>
            <span class="text-sm text-gray-600 text-center">{{ skill.name }}</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-8 px-4 sm:px-6 lg:px-8">
      <div class="max-w-7xl mx-auto text-center">
        <p class="text-gray-400">© 2025 Cedric Mungobo. Tous droits réservés.</p>
      </div>
    </footer>
  </div>
</template>

<script lang="ts" setup>
const skills = [
  { name: 'GitHub', icon: '🔗' },
  { name: 'Figma', icon: '🎨' },
  { name: 'MySQL', icon: '🗄️' },
  { name: 'PostgreSQL', icon: '🐘' },
  { name: 'WordPress', icon: '📝' },
  { name: 'VS Code', icon: '💻' },
  { name: 'JavaScript', icon: '📜' },
  { name: 'jQuery', icon: '⚡' },
  { name: 'Bootstrap', icon: '🎯' },
  { name: 'Tailwind', icon: '💨' },
  { name: 'React', icon: '⚛️' },
  { name: 'ReactQuery', icon: '🔄' },
  { name: 'Next.js', icon: '▲' },
  { name: 'Node.js', icon: '🟢' },
  { name: 'Laravel', icon: '🔴' },
  { name: 'Flutter', icon: '📱' },
  { name: 'Dart', icon: '🎯' },
  { name: 'Electron', icon: '⚡' },
  { name: 'Docker', icon: '🐳' },
  { name: 'Vite', icon: '⚡' },
  { name: 'Git', icon: '📦' },
]

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