<script setup>
import { onMounted, ref } from "vue";
import { useRoute } from "vue-router";
import { useEstatesStore } from "../stores/estatesStore";

const estatesStore = useEstatesStore();
const estate = ref(null);
const contact = ref(null);
const pics = ref([]);

const route = useRoute();

onMounted(async () => {
  await estatesStore.getEstates();
  estate.value = estatesStore.findEstate(Number(route.params.id));
  await estatesStore.getStaff();
  contact.value = estatesStore.findStaffMember(estate.value.contact);
  pics.value = estate.value.pics.split(",");
});

const price = (val) =>
  new Intl.NumberFormat("de-UK", { style: "currency", currency: "GBP" }).format(val);
</script>

<template>
  <div v-if="estate != null">
    <p class="text-h4 text-center" style="font-family: 'Lora'">
      {{ estate.title }}
      <q-btn
        to="/estates"
        flat
        icon="fa-solid fa-arrow-up"
        size="1.0rem"
        class="text-secondary"
      ></q-btn>
    </p>
    <p class="text-h6 text-center">{{ price(estate.price) }}</p>
    <p class="text-center text-h6">
      Your contact:
      <q-btn flat class="bg-secondary" to="/team">{{ estate.contact }}</q-btn>
    </p>
    <p class="text-center">Type: {{ estate.type }}</p>
    <p class="text-center">
      Bedrooms: {{ estate.bedrooms }}, Bathrooms: {{ estate.bathrooms }}
    </p>
    <p class="q-mx-xl">{{ estate.description }}</p>
    <div class="row wrap justify-center">
      <q-card
        v-for="(p, i) of pics"
        :key="i"
        class="q-ma-sm shadow-4"
        style="width: 300px"
      >
        <q-img :src="`http://localhost:3000/images/${p}`" alt="picture of a house" />
      </q-card>
    </div>
  </div>
</template>
