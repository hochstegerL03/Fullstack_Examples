<script setup>
import { onMounted, ref, unref } from 'vue';
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';
const myStore = useMyStore();
const flavors = ref();
const slide = ref(1);
onMounted(async () => {
  await myStore.getFlavors();
  flavors.value = unref(myStore.flavors);
  console.log(flavors.value);
});
</script>
<template>
  <div class="row justify-center q-mt-md q-ma-lg">
    <q-carousel
      v-model="slide"
      animated
      infinite
      :autoplay="4000"
      style="width: 100%; height: 100%"
    >
      <q-carousel-slide
        v-for="(flavor, index) in flavors"
        :key="index"
        :name="flavor.name"
        class="row flex-center"
      >
        <div class="col-7">
          <q-img :src="`http://localhost:3000/images/${flavor.image}`" />
        </div>
        <div class="col-5">
          <div class="row items-center justify-center">
            <div class="text-h6 text-weight-bold">{{ flavor.name }}</div>
          </div>
        </div>
      </q-carousel-slide>
    </q-carousel>
    {{ slide }}
    <div class="row justify-center q-gutter-md q-mt-md">
      <q-btn
        v-for="(flavor, index) in flavors"
        :key="index"
        class="bg-secondary q-pa-md text-white"
        :label="flavor.name"
        :to="`/flavors/${flavor.name}`"
      />
    </div>
  </div>
</template>
