<template>
  <div>
    <!-- Hero Section -->
    <HeroSection />

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

    <!-- About Section -->
    <section id="about" class="py-20 px-4 sm:px-6 lg:px-8">
      <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-4xl font-bold text-gray-900 mb-6">À propos</h2>
        <p class="text-lg text-gray-600 leading-relaxed">
          Je suis un développeur passionné par la création de solutions innovantes et performantes. 
          Mon expertise couvre le développement web backend, frontend et mobile, avec une attention 
          particulière à la qualité du code et à l'expérience utilisateur.
        </p>
      </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="py-20 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-4xl font-bold text-gray-900 text-center mb-12">Mes services</h2>
        <p class="text-center text-gray-600 mb-16">Des services pensés pour allier performance et design</p>
        
        <div class="grid md:grid-cols-3 gap-8">
          <div v-for="service in services" :key="service.title" class="bg-white p-8 rounded-xl shadow-lg hover:shadow-xl transition-shadow">
            <div class="text-4xl mb-4">{{ service.icon }}</div>
            <h3 class="text-2xl font-semibold text-gray-900 mb-4">{{ service.title }}</h3>
            <p class="text-gray-600">{{ service.description }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="py-20 px-4 sm:px-6 lg:px-8">
      <div class="max-w-7xl mx-auto">
        <h2 class="text-4xl font-bold text-gray-900 text-center mb-12">Mes projets</h2>
        <p class="text-center text-gray-600 mb-16">
          Des projets conçus avec passion, rigueur et sens du détail.
        </p>
        
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div v-for="project in projects" :key="project.title" class="bg-gray-50 rounded-xl p-6 hover:shadow-lg transition-shadow">
            <h3 class="text-xl font-semibold text-gray-900 mb-2">{{ project.title }}</h3>
            <p class="text-gray-600 mb-4">{{ project.description }}</p>
            <div class="flex flex-wrap gap-2">
              <span v-for="tech in project.tech" :key="tech" class="text-xs bg-gray-200 text-gray-700 px-3 py-1 rounded-full">
                {{ tech }}
              </span>
            </div>
          </div>
        </div>
        
        <div class="text-center mt-12">
          <a href="#" class="text-gray-900 hover:text-gray-700 font-semibold">Autres projets →</a>
        </div>
      </div>
    </section>

    <!-- Experience Section -->
    <section id="experience" class="py-20 bg-gray-50">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-4xl font-bold text-gray-900 text-center mb-12">Mon expérience</h2>
        <p class="text-center text-gray-600 mb-16">
          Un parcours construit autour de la passion du développement et de l'excellence technique.
        </p>
        
        <div class="space-y-8">
          <div v-for="exp in experiences" :key="exp.title" class="bg-white p-6 rounded-xl shadow-md">
            <div class="flex flex-col md:flex-row md:justify-between md:items-start mb-4">
              <div>
                <h3 class="text-xl font-semibold text-gray-900 mb-1">{{ exp.title }}</h3>
                <p class="text-gray-600 font-medium">{{ exp.company }}</p>
                <p class="text-gray-500 text-sm">{{ exp.location }}</p>
              </div>
              <span class="text-gray-600 font-medium mt-2 md:mt-0">{{ exp.period }}</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20 px-4 sm:px-6 lg:px-8">
      <div class="max-w-4xl mx-auto">
        <h2 class="text-4xl font-bold text-gray-900 text-center mb-6">Me contacter</h2>
        <p class="text-center text-gray-600 mb-12">
          Prêt à donner vie à vos idées ? Contactez-moi dès maintenant.
        </p>
        
        <div class="grid md:grid-cols-2 gap-12 mb-12">
          <div>
            <h3 class="text-xl font-semibold text-gray-900 mb-4">Informations de contact</h3>
            <div class="space-y-4">
              <div class="flex items-center">
                <span class="text-gray-600 mr-3">📧</span>
                <a href="mailto:patrick.aime.714@gmail.com" class="text-gray-700 hover:text-gray-900">patrick.aime.714@gmail.com</a>
              </div>
              <div class="flex items-center">
                <span class="text-gray-600 mr-3">📱</span>
                <a href="tel:+2250708377751" class="text-gray-700 hover:text-gray-900">(225) 07 083 777 51</a>
              </div>
              <div class="flex items-center">
                <span class="text-gray-600 mr-3">📍</span>
                <span class="text-gray-700">Congo Kinshasa</span>
              </div>
            </div>
          </div>
          
          <div>
            <h3 class="text-xl font-semibold text-gray-900 mb-4">Réseaux sociaux</h3>
            <div class="space-y-3">
              <a href="#" class="block text-gray-700 hover:text-gray-900">LinkedIn</a>
              <a href="#" class="block text-gray-700 hover:text-gray-900">GitHub</a>
            </div>
          </div>
        </div>
        
        <form class="bg-gray-50 p-8 rounded-xl">
          <div class="grid md:grid-cols-2 gap-6 mb-6">
            <div>
              <label class="block text-gray-700 font-medium mb-2">Nom & prénom(s) *</label>
              <input type="text" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-gray-900">
            </div>
            <div>
              <label class="block text-gray-700 font-medium mb-2">Email *</label>
              <input type="email" required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-gray-900">
            </div>
          </div>
          
          <div class="mb-6">
            <label class="block text-gray-700 font-medium mb-2">Objet *</label>
            <select required class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-gray-900">
              <option value="">Sélectionner un objet</option>
              <option value="site-web">Site Web</option>
              <option value="app-web">Application Web</option>
              <option value="app-mobile">Application Mobile</option>
              <option value="deploiement">Déploiement / Intégration</option>
              <option value="saas">Solution SaaS</option>
              <option value="maintenance">Maintenance Application</option>
              <option value="autre">Autre</option>
            </select>
          </div>
          
          <div class="mb-6">
            <label class="block text-gray-700 font-medium mb-2">Message *</label>
            <textarea required rows="6" class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-gray-900"></textarea>
          </div>
          
          <button type="submit" class="w-full bg-gray-900 text-white px-8 py-3 rounded-lg hover:bg-gray-800 transition-colors text-lg font-medium">
            Envoyer
          </button>
        </form>
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