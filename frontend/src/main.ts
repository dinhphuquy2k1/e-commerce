import { createApp } from 'vue'
import App from './App.vue'
import PrimeVue from 'primevue/config';
import './registerServiceWorker'
import router from './router'
import store from './store'
const app = createApp(App);
app
.use(store)
.use(PrimeVue)
.use(router)
.mount('#app')
