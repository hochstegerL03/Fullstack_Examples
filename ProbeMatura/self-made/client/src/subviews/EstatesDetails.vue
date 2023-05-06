<script setup>
import { ref, onMounted } from 'vue';
import slideshow from '../assets/slideshow.json';
import { storeToRefs } from 'pinia';
import { useRealEstateStore } from '../stores/realEstateStore.js';

const realEstateStore = useRealEstateStore();
const estate = ref();

const props = defineProps({ id: String });

onMounted(async () => {
  await realEstateStore.getAllEstates();
  estate.value = realEstateStore.getEstate(props.id);
});

const slide = ref(slideshow[0].location);
</script>

<template>
  
  <div v-if="estate" class="column items-center q-mt-lg">
    <div class="row justify-center">
      <div class="text-h5 text-weight-bold">{{ estate.title }}</div>
      <div class="q-mx-md text-secondary text-h5">
        <i @click="$router.push('/estates')" class="fa-solid fa-arrow-up"></i>
      </div>
    </div>
    <div class="text-body1 q-my-md">
      {{
        new Intl.NumberFormat('de-UK', { style: 'currency', currency: 'GBP' }).format(estate.preis)
      }}
    </div>
    <div class="row justify-center items-center q-gutter-sm">
      <div class="text-body1">Your contact:</div>
      <q-btn to="/teams" flat class="bg-secondary text-body2">{{ estate.sname }}</q-btn>
    </div>
    <div class="q-mt-md">Type: {{ estate.type }}</div>
    <div class="q-mt-sm">Bedrooms: {{ estate.bedrooms }}, Bathrooms: {{ estate.bathrooms }}</div>
    <div class="q-ma-lg">{{ estate.description }}</div>
    <div class="row justify-center q-gutter-sm q-mb-lg">
      <div v-for="(image, index) in estate.pics.split(',')" :key="index" class="col-3">
        <img
          style="width: 100%"
          crossorigin="anonymous"
          :src="`http://localhost:3000/images/${image}`"
        />
      </div>
    </div>
  </div>
</template>
