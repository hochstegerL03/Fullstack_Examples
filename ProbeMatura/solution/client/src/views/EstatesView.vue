<script setup>
import { ref, onMounted } from "vue";
import items from "@/assets/slideshow.json";
import { storeToRefs } from "pinia";

import { useEstatesStore } from "@/stores/estatesStore.js";
const estatesStore = useEstatesStore();

const { estates } = storeToRefs(estatesStore);
onMounted(() => {
  estatesStore.getEstates();
  estatesStore.getStaff();
});

let slide = ref(1);
const columns = [
  {
    name: "image",
    field: "image",
    style: "width:300px",
    align: "left",
    label: "Image",
  },
  {
    name: "title",
    align: "left",
    label: "Title",
    field: "title",
    style: "font-size: 1.2rem; ; width: 200px",
    classes: "gt-xs",
  },
  {
    name: "information",
    align: "left",
    label: "Information",
    field: ({ bedrooms, bathrooms, city, status, type }) => ({
      bedrooms,
      bathrooms,
      city,
      status,
      type,
    }),
    style: "width:150px",
  },
  {
    name: "actions",
    style: "width: 150px",
    label: "",
  },
];

const reserve = (id) => {
  estatesStore.reserveEstate(id);
};
</script>
<template>
  <q-carousel
    class="q-mt-md"
    animated
    v-model="slide"
    autoplay
    infinite
    height="400px"
    transition-prev="slide-right"
    transition-next="slide-left"
  >
    <q-carousel-slide
      :img-src="`slideshow/${slide.image}`"
      v-for="(slide, i) of items"
      :key="i"
      :name="i"
    >
    </q-carousel-slide>
  </q-carousel>

  <p class="text-h5 q-mt-md text-center">
    {{ items[slide].location }}
  </p>
  <div class="q-mx-xl q-mb-lg">
    <q-table
      hide-header
      wrap-cells
      :rows="estates"
      :columns="columns"
      row-key="name"
      flat
    >
      <template #body-cell-image="props">
        <q-td :props="props" class="">
          <q-img
            :src="`http://localhost:3000/${props.value}`"
            max-height="270px"
            max-width="370px"
            alt="picture of a house"
          />
        </q-td>
      </template>
      <template #body-cell-information="props">
        <q-td :props="props" class="gt-sm">
          <p class="text-h6 text-bold">{{ props.value.city }}</p>
          <p class="text-bold">{{ props.value.type }}</p>
          <p>
            <q-icon name="fa-solid fa-bed" size="1.1rem" class="text-secondary"></q-icon
            ><span class="text-subtitle1 q-ml-md">{{ props.value.bedrooms }}</span>
          </p>
          <p>
            <q-icon
              name="fa-solid fa-shower"
              size="1.1rem"
              class="text-secondary"
            ></q-icon
            ><span class="text-subtitle1 q-ml-md">{{ props.value.bathrooms }}</span>
          </p>
        </q-td>
      </template>
      <template #body-cell-actions="props">
        <q-td :props="props">
          <q-btn :to="`/estates/${props.row.id}`" flat class="full-width bg-secondary"
            >DETAILS...</q-btn
          >
          <q-btn
            v-if="props.row.status === 'Available'"
            @click="reserve(props.row.id)"
            flat
            class="full-width bg-black text-white q-mt-md"
            >RESERVE</q-btn
          >
          <p v-else class="text-h6 q-mt-md text-center">Reserved</p>
        </q-td>
      </template>
    </q-table>
  </div>
</template>
