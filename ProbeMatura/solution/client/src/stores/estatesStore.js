import { defineStore } from 'pinia';
import axios from 'axios';

import { ref } from 'vue';

axios.defaults.baseURL = 'http://localhost:3000';

export const useEstatesStore = defineStore('estatesStore', () => {
  const estates = ref([]);
  const staff = ref([]);

  const getEstates = async () => {
    const { data } = await axios.get('/estates');
    estates.value = data;
  };

  const getStaff = async () => {
    const { data } = await axios.get('/staff');
    staff.value = data;
  };

  const findStaffMember = (name) => staff.value.find((el) => el.name === name);

  const findEstate = (id) => {
    const x = estates.value.find((el) => el.id === id);
    return x;
  };

  const reserveEstate = async (id) => {
    await axios.patch(`/estates/${id}`, { status: 'Reserved' });
    getEstates();
  };

  const sendMessage = (message) => {
    axios.post('/staff', { message });
  };

  return {
    estates,
    getEstates,
    getStaff,
    staff,
    findStaffMember,
    findEstate,
    reserveEstate,
    sendMessage,
  };
});
