import { createApp } from 'vue'
import App from './App.vue'
import PrimeVue from 'primevue/config';
import Tooltip from 'primevue/tooltip';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import './registerServiceWorker'
import router from './router'
import store from './store'
const app = createApp(App);
app.directive('tooltip', Tooltip);
app.use(store)
.use(PrimeVue)
.use(router)
.mount('#app')
