import { defineStore } from 'pinia';
import axios from 'axios';

// ------ option version -------
export const useMyStore = defineStore('myStore', {
  state: () => ({ sights: [] }),
  getters: {},
  actions: {
    async getSights() {
      const { data } = await axios.get('http://localhost:3000/sights');
      this.sights = data;
    },
  },
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
