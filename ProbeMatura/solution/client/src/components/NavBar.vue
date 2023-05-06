<script setup>
import { ref } from "vue";

const leftDrawerOpen = ref(false);

const toggleLeftDrawer = () => (leftDrawerOpen.value = !leftDrawerOpen.value);
</script>

<template>
  <q-header class="bg-white text-black q-pt-md">
    <q-toolbar>
      <q-btn class="lt-sm" dense flat round icon="menu" @click="toggleLeftDrawer" />

      <q-space></q-space>

      <img class="lt-sm q-mb-md" src="@/assets/beg-immobilien-logo.svg" height="110" />
      <div class="column items-center gt-xs">
        <span class="text-h6 q-px-sm text-uppercase" style="letter-spacing: 0.1rem"
          >Baumgartner</span
        >
        <span class="text-h3" style="font-family: PlayfairMedium"> Estates Group </span>
      </div>
      <q-space></q-space>
    </q-toolbar>

    <q-tabs align="center" class="gt-xs q-my-md">
      <q-route-tab to="/" label="Home" />
      <q-route-tab to="/estates" label="Estates" />
      <q-route-tab to="/team" label="Team" />
    </q-tabs>
  </q-header>

  <q-drawer v-model="leftDrawerOpen" side="left" bordered :width="150">
    <q-list class="q-mt-lg">
      <q-item to="/" active-class="bg-secondary"
        ><q-item-section>HOME</q-item-section></q-item
      >
      <q-item to="/estates" active-class="bg-secondary"
        ><q-item-section>ESTATES</q-item-section></q-item
      >
      <q-item to="/team" active-class="bg-secondary"
        ><q-item-section>TEAM</q-item-section></q-item
      >
      <q-separator></q-separator>
      <q-item class="q-mt-md"> </q-item>
    </q-list>
  </q-drawer>
</template>
