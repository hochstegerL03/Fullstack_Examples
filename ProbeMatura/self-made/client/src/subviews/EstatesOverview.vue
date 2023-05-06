<script setup>
import { ref, onMounted } from 'vue';
import slideshow from '../assets/slideshow.json';
import { storeToRefs } from 'pinia';
import { useRealEstateStore } from '../stores/realEstateStore.js';
import { useQuasar } from 'quasar';

const $q = useQuasar();
const realEstateStore = useRealEstateStore();
const estates = ref();
const columns = [
  { name: 'image', field: 'image' },
  { name: 'title', field: 'title' },
  { name: 'country', field: 'country' },
  { name: 'functions' },
];

onMounted(async () => {
  await realEstateStore.getAllEstates();
  estates.value = storeToRefs(realEstateStore).estates.value;
});

const slide = ref(slideshow[0].location);

async function reserveitem(id) {
  console.log(id);
  await realEstateStore.reserveImmo(id);
  estates.value = storeToRefs(realEstateStore).estates.value;
}

const visibleColumns = () => {
  let cols = ['image', 'functions'];
  if ($q.screen.gt.xs) cols.push('title', 'country');
};
</script>

<template>
  <div class="row justify-center q-mt-lg">
    <q-carousel
      style="width: 100%"
      animated
      transition-prev="slide-right"
      transition-next="slide-left"
      v-model="slide"
      :autoplay="4000"
      infinite
    >
      <q-carousel-slide
        v-for="(slide, index) in slideshow"
        :key="index"
        :name="slide.location"
        :img-src="`/slideshow/${slide.image}`"
      />
    </q-carousel>
    <div class="text-h6 q-mt-md">{{ slide }}</div>
    <div class="text-h6 q-mt-md" style="width: 100%">
      <q-table
        
        style="width: 100%"
        title="Treats"
        :rows="estates"
        :columns="columns"
        row-key="name"
      >
        <template #body-cell-image="props">
          <q-td :props="props">
            <img
              style="width: 100%; min-width: 100px; max-width: 300px"
              crossorigin="anonymous"
              :src="`http://localhost:3000/${props.row.image}`"
            />
          </q-td>
        </template>
        <template #body-cell-country="props">
          <q-td :props="props">
            <div class="column text-left">
              <p class="text-weight-bold text-body1">{{ props.row.cname }}</p>
              <p class="text-weight-bold text-body2">{{ props.row.type }}</p>
              <div class="row items-center">
                <i class="col-2 fa-solid fa-bed text-secondary"></i>
                <div class="col-10">{{ props.row.bedrooms }}</div>
              </div>
              <div class="row items-center">
                <i class="col-2 fa-solid fa-shower text-secondary"></i>
                <div class="col-10">{{ props.row.bathrooms }}</div>
              </div>
            </div>
          </q-td>
        </template>
        <template #body-cell-functions="props">
          <q-td :props="props">
            <div class="column text-left q-gutter-md">
              <q-btn :to="`/estates/${props.row.id}`" flat class="bg-secondary">Details...</q-btn>
              <q-btn
                v-if="props.row.status == 'Available'"
                @click="reserveitem(props.row.id)"
                flat
                class="bg-black text-white"
                >Reserve</q-btn
              >
              <div v-else-if="props.row.status == 'Reserved'">
                <div class="text-center text-uppercase">Reserved</div>
              </div>
              <div v-else-if="props.row.status == 'Sold'">
                <div class="text-center text-uppercase">Sold</div>
              </div>
            </div>
          </q-td>
        </template>
      </q-table>
    </div>
  </div>
</template>
