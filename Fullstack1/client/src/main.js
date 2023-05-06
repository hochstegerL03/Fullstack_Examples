import { createApp } from 'vue';
import { Quasar, Notify } from 'quasar';
import { createPinia } from 'pinia';

// Import icon libraries
import '@quasar/extras/roboto-font/roboto-font.css';
import '@quasar/extras/material-icons/material-icons.css';
import '@quasar/extras/fontawesome-v6/fontawesome-v6.css';

// Import Quasar css
import 'quasar/src/css/index.sass';

// Assumes your root component is App.vue
// and placed in same folder as main.js
import App from './App.vue';

import router from './router/routes.js';

const app = createApp(App);
app.use(createPinia());
app.use(Quasar, {
  plugins: { Notify },
});

app.use(router);

// Assumes you have a <div id="app"></div> in your index.html
app.mount('#app');
