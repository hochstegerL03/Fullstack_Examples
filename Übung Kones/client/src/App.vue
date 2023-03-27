<script setup>
import { ref } from 'vue';
import NavbarKones from './components/NavbarKones.vue';
import SocialIcons from './components/SocialIcons.vue';
const leftDrawerOpen = ref(false);

const toggleLeftDrawer = () => (leftDrawerOpen.value = !leftDrawerOpen.value);
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <NavbarKones @toggleDrawer="toggleLeftDrawer"></NavbarKones>
    <q-drawer v-model="leftDrawerOpen" side="left">
      <q-list class="q-mt-lg text-black text-weight-bold text-uppercase">
        <q-item class="q-py-lg" clickable v-ripple to="/" active-class="bg-primary text-white">
          <q-item-section>Home</q-item-section>
        </q-item>
        <q-item
          class="q-py-lg"
          clickable
          v-ripple
          to="/flavors"
          active-class="bg-primary text-white"
        >
          <q-item-section>Flavors</q-item-section>
        </q-item>
        <q-item
          class="q-py-lg"
          clickable
          v-ripple
          to="/orders"
          active-class="bg-primary text-white"
        >
          <q-item-section>Orders</q-item-section>
        </q-item>
        <q-item
          class="q-py-lg"
          clickable
          v-ripple
          to="/locations"
          active-class="bg-primary text-white"
        >
          <q-item-section>Locations</q-item-section>
        </q-item>

        <q-separator spaced />
        <q-item><SocialIcons></SocialIcons></q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style>
@font-face {
  font-family: 'NeutraTextBold';
  src: url('/fonts/NeutraText/Neutra Text Bold/Neutra Text Bold.otf') format('opentype');
}

@font-face {
  font-family: 'NeutraTextBook';
  src: url('/fonts/NeutraText/Neutra Text Book/Neutra Text Book.otf') format('opentype');
}

* {
  font-family: 'NeutraTextBook';
}
</style>
