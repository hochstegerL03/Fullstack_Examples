import { defineStore } from 'pinia';
import axios from 'axios';

// ------ option version -------
export const useRealEstateStore = defineStore('realEstateStore', {
  state: () => ({ estates: [], staff: [] }),
  getters: {},
  actions: {
    async getAllEstates() {
      const { data } = await axios.get('http://localhost:3000/estates/');
      this.estates = data;
    },
    async getStaff() {
      const { data } = await axios.get('http://localhost:3000/staff/');
      this.staff = data;
    },
    getEstate(id) {
      return this.estates.find((el) => el.id == id);
    },
    async reserveImmo(id) {
      await axios.patch(`http://localhost:3000/estates/${id}`, { status: 'Reserved' });
      await this.getAllEstates();
    },
    async sendComment(comment) {
      await axios.patch(`http://localhost:3000/staff/comment`, { comment });
    },
  },
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
