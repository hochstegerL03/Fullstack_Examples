<script setup>
import { ref } from 'vue';

const leftDrawerOpen = ref(false);
const rightDrawerOpen = ref(false);

const toggleLeftDrawer = () => (leftDrawerOpen.value = !leftDrawerOpen.value);
const toggleRightDrawer = () => (rightDrawerOpen.value = !rightDrawerOpen.value);
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <q-header elevated class="bg-primary text-black" height-hint="98">
      <q-toolbar class="gt-xs">
        <q-avatar size="150px">
          <img src="./assets/Wien_logo.svg" />
        </q-avatar>
        <q-toolbar-title class="text-h5" align="left"> Touristen Information </q-toolbar-title>
      </q-toolbar>
      <div class="row items-stretch lt-sm">
        <q-btn class="lt-sm" dense flat round icon="menu" @click="toggleLeftDrawer" />
        <div class="col-10">
          <div class="row justify-center items-center">
            <img class="col-12" style="width: 150px" src="./assets/Wien_logo.svg" />
            <q-toolbar-title class="text-h5 col-12 text-center" align="left"> Touristen Information </q-toolbar-title>
          </div>
        </div>
      </div>

      <q-tabs class="gt-xs" align="center" active-class="text-secondary">
        <q-route-tab to="/" label="NEWS" />
        <q-route-tab to="/sightseeing" label="SIGHTSEEING" />
        <q-route-tab to="/events" label="EVENTS" />
      </q-tabs>
    </q-header>

    <q-drawer :width="200" v-model="leftDrawerOpen" side="left">
      <q-list flat class="q-mt-md">
        <q-item to="/" clickable v-ripple active-class="text-secondary bg-primary">
          <q-item-section>NEWS</q-item-section>
        </q-item>
        <q-item to="/sightseeing" clickable v-ripple active-class="text-secondary bg-primary">
          <q-item-section>SIGHTSEEING</q-item-section>
        </q-item>
        <q-item to="/events" clickable v-ripple active-class="text-secondary bg-primary">
          <q-item-section>EVENTS</q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style>
@font-face {
  font-family: 'Montserrat';
  src: url('/fonts/Montserrat/Montserrat-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'Lora';
  src: url('/fonts/Lora/Lora-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'LibreBodoni';
  src: url('/fonts/LibreBodoni/LibreBodoni-Regular.ttf') format('truetype');
}

* {
  font-family: 'Montserrat';
}
</style>
