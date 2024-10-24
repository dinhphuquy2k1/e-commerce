import {createApp} from 'vue'
import App from './App.vue'
import PrimeVue from 'primevue/config';
import Tooltip from 'primevue/tooltip';
import ToastService from 'primevue/toastservice';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import i18n from "@/i18n";
import router from './router'
import store from './store'

const app = createApp(App);
app.directive('tooltip', Tooltip);
app
    .use(PrimeVue)
    .use(router)
    .use(i18n)
    .use(ToastService)
    .use(store)
    .mount('#app')
