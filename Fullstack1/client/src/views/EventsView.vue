<script setup>
import { ref } from 'vue';
const slide = ref(1);
const autoplay = ref(4000);
</script>

<template>
  <div>
    <q-responsive :ratio="1.777">
      <q-carousel
        animated
        v-model="slide"
        infinite
        :autoplay="autoplay"
        transition-prev="slide-right"
        transition-next="slide-left"
        @mouseenter="autoplay = false"
        @mouseleave="autoplay = 4000"
      >
        <q-carousel-slide :name="1" img-src="../assets/slideshow/1.jpg" />
        <q-carousel-slide :name="2" img-src="../assets/slideshow/2.jpg" />
        <q-carousel-slide :name="3" img-src="../assets/slideshow/3.jpg" />
        <q-carousel-slide :name="4" img-src="../assets/slideshow/4.jpg" />
        <q-carousel-slide :name="5" img-src="../assets/slideshow/5.jpg" />
      </q-carousel>
    </q-responsive>
  </div>
</template>

<style lang="scss" scoped></style>
