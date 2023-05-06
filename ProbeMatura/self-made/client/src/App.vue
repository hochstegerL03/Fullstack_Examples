<script setup>
import { ref } from 'vue';

const leftDrawerOpen = ref(false);
const rightDrawerOpen = ref(false);

const toggleLeftDrawer = () => (leftDrawerOpen.value = !leftDrawerOpen.value);
const toggleRightDrawer = () => (rightDrawerOpen.value = !rightDrawerOpen.value);
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <q-header  class="bg-white text-black" height-hint="98">
      <q-toolbar class="lt-sm">
        <q-btn dense flat round icon="menu" @click="toggleLeftDrawer" />
        <q-toolbar-title align="center">
          <q-img style="width: 150px" src="./assets/beg-immobilien-logo.svg" />
        </q-toolbar-title>
      </q-toolbar>

      <q-toolbar class="gt-xs">
        <q-toolbar-title class="column text-center items-center justify-center">
          <div class="text-uppercase text-body1 q-mt-md">Baumgartner</div>
          <div class="text-h4 text-weight-bold q-mb-sm">Estates Group</div>
        </q-toolbar-title>
      </q-toolbar>

      <q-tabs align="center" class="gt-xs">
        <q-route-tab to="/" label="Home" />
        <q-route-tab to="/estates" label="Estates" />
        <q-route-tab to="/team" label="Team" />
      </q-tabs>
    </q-header>

    <q-drawer :width="200" v-model="leftDrawerOpen" side="left">
      <q-list class="q-mt-lg text-primary">
        <q-item
          clickable
          v-ripple
          to="/"
          active-class="bg-secondary"
          class="text-uppercase text-black"
        >
          <q-item-section>
            <div>Home</div>
          </q-item-section>
        </q-item>
        <q-item
          clickable
          v-ripple
          to="/estates"
          active-class="bg-secondary"
          class="text-uppercase text-black"
        >
          <q-item-section>
            <div>Estates</div>
          </q-item-section>
        </q-item>
        <q-item
          clickable
          v-ripple
          to="/team"
          active-class="bg-secondary"
          class="text-uppercase text-black"
        >
          <q-item-section>
            <div>Team</div>
          </q-item-section>
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
