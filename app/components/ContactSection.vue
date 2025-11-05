<template>
  <section id="contact" class="py-20 px-4 sm:px-6 lg:px-8 ">
    <div class="max-w-4xl mx-auto">
      <div class="text-center mb-12">
        <h2 class="text-4xl font-bold text-gray-900 mb-4">Contactez-moi</h2>
        <p class="text-lg text-gray-600">
          Discutons de votre projet et trouvons ensemble la meilleure solution
        </p>
      </div>
      
      <!-- Coordonnées -->
      <div class="grid md:grid-cols-3 gap-6 mb-12">
        <!-- Téléphone -->
        <a 
          :href="`tel:${phoneNumber}`"
          class="bg-white border border-gray-200 rounded-xl p-6 hover:shadow-lg hover:-translate-y-1 transition-all duration-300 hover:border-primary-400/50 group"
        >
          <div class="flex items-center justify-center w-12 h-12 bg-primary-400/10 rounded-lg mb-4 group-hover:bg-primary-400/20 transition-colors">
            <svg class="w-6 h-6 text-primary-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
            </svg>
          </div>
          <h3 class="text-sm font-medium text-gray-500 mb-2">Téléphone</h3>
          <p class="text-gray-900 font-semibold">{{ phoneNumber }}</p>
        </a>
        
        <!-- Email -->
        <a 
          href="mailto:sedrickmungobo1@gmail.com"
          class="bg-white border border-gray-200 rounded-xl p-6 hover:shadow-lg hover:-translate-y-1 transition-all duration-300 hover:border-primary-400/50 group"
        >
          <div class="flex items-center justify-center w-12 h-12 bg-primary-400/10 rounded-lg mb-4 group-hover:bg-primary-400/20 transition-colors">
            <svg class="w-6 h-6 text-primary-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
            </svg>
          </div>
          <h3 class="text-sm font-medium text-gray-500 mb-2">Email</h3>
          <p class="text-gray-900 font-semibold text-sm">sedrickmungobo1@gmail.com</p>
        </a>
        
        <!-- Localisation -->
        <div class="bg-white border border-gray-200 rounded-xl p-6">
          <div class="flex items-center justify-center w-12 h-12 bg-primary-400/10 rounded-lg mb-4">
            <svg class="w-6 h-6 text-primary-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
            </svg>
          </div>
          <h3 class="text-sm font-medium text-gray-500 mb-2">Localisation</h3>
          <p class="text-gray-900 font-semibold">Congo Kinshasa</p>
        </div>
      </div>
      
      <form @submit.prevent="handleSubmit" class="bg-white border border-gray-200 rounded-xl p-8 shadow-sm">
        <div class="grid md:grid-cols-2 gap-6 mb-6">
          <!-- Nom -->
          <div>
            <label for="name" class="block text-sm font-medium text-gray-700 mb-2">
              Nom complet *
            </label>
            <input
              id="name"
              v-model="form.name"
              type="text"
              required
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-400 focus:border-primary-400 outline-none transition-all"
              placeholder="Votre nom"
            />
          </div>
          
          <!-- Email -->
          <div>
            <label for="email" class="block text-sm font-medium text-gray-700 mb-2">
              Email
            </label>
            <input
              id="email"
              v-model="form.email"
              type="email"
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-400 focus:border-primary-400 outline-none transition-all"
              placeholder="votre@email.com (optionnel)"
            />
          </div>
        </div>
        
        <!-- Sujet -->
        <div class="mb-6">
          <label for="subject" class="block text-sm font-medium text-gray-700 mb-2">
            Sujet *
          </label>
          <select
            id="subject"
            v-model="form.subject"
            required
            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-400 focus:border-primary-400 outline-none transition-all bg-white"
          >
            <option value="">Sélectionnez un sujet</option>
            <option value="Création site web">Création site web</option>
            <option value="Création application web">Création application web</option>
            <option value="Création application mobile">Création application mobile</option>
            <option value="Intégration mobile money">Intégration mobile money</option>
            <option value="Refonte de mon site">Refonte de mon site</option>
            <option value="Maintenance de mon site">Maintenance de mon site</option>
            <option value="Autres">Autres</option>
          </select>
        </div>
        
        <!-- Message -->
        <div class="mb-6">
          <label for="message" class="block text-sm font-medium text-gray-700 mb-2">
            Message *
          </label>
          <textarea
            id="message"
            v-model="form.message"
            required
            rows="6"
            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-400 focus:border-primary-400 outline-none transition-all resize-none"
            placeholder="Décrivez votre projet ou votre besoin..."
          ></textarea>
        </div>
        
        <!-- Submit Button -->
        <button
          type="submit"
          class="w-full bg-primary-400 text-gray-900 px-6 py-3 rounded-lg hover:bg-primary-500 transition-all text-base font-medium shadow-sm flex items-center justify-center gap-2"
        >
          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
            <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/>
          </svg>
          Envoyer via WhatsApp
        </button>
      </form>
    </div>
  </section>
</template>

<script lang="ts" setup>
const form = ref({
  name: '',
  email: '',
  subject: 'Création site web',
  message: ''
})

const phoneNumber = '+243826785727'

const handleSubmit = () => {
  // Créer le message prédéfini pour WhatsApp
  const emailInfo = form.value.email ? ` (${form.value.email})` : ''
  const whatsappMessage = `Bonjour, je suis ${form.value.name}${emailInfo}.

Sujet: ${form.value.subject}

Message: ${form.value.message}

Je souhaiterais discuter de mon projet avec vous.`

  // Encoder le message pour l'URL
  const encodedMessage = encodeURIComponent(whatsappMessage)
  
  // Créer l'URL WhatsApp
  const whatsappUrl = `https://wa.me/${phoneNumber.replace(/[^0-9]/g, '')}?text=${encodedMessage}`
  
  // Ouvrir WhatsApp
  window.open(whatsappUrl, '_blank')
  
  // Réinitialiser le formulaire
  form.value = {
    name: '',
    email: '',
    subject: '',
    message: ''
  }
}
</script>

<style scoped>
</style>

