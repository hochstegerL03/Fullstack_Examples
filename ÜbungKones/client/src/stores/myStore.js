import { defineStore } from 'pinia';
import axios from 'axios';

// ------ option version -------
export const useMyStore = defineStore('myStore', {
  state: () => ({ flavors: [] }),
  getters: {},
  actions: {
    async getFlavors() {
      const { data } = await axios.get('http://localhost:3000/flavors');
      this.flavors = data;
    },
  },
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
