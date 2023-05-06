<script setup>
import { useQuasar } from 'quasar';
import { ref } from 'vue';
const leftDrawerOpen = ref(false);
function toggleLeftDrawer() {
  leftDrawerOpen.value = !leftDrawerOpen.value;
}

const $q = useQuasar();
</script>

<template>
  <q-layout view="lHh lpR fFf">
    <q-header style="height: 8rem" elevated class="bg-accent text-black" height-hint="98">
      <q-toolbar>
        <q-btn dense flat round icon="menu" @click="toggleLeftDrawer" />

        <q-toolbar-title align="center">
          <div class="q-ma-lg column items-stretch">
            <div class="col-12 text-h3 text-uppercase text-weight-bold">R&B Books</div>
            <div class="col-12 text-h5 text-uppercase">independet Sellers</div>
          </div>
        </q-toolbar-title>
      </q-toolbar>

      <!-- <q-tabs >
        <q-route-tab to="/page1" label="Page One" />
        <q-route-tab to="/page2" label="Page Two" />
        <q-route-tab to="/page3" label="Page Three" />
      </q-tabs> -->
    </q-header>

    <q-drawer
      class="bg-secondary text-black"
      persistent
      :breakpoint="600"
      :width="200"
      v-model="leftDrawerOpen"
      side="left"
    >
      <div style="height: 8rem"></div>
      <q-list padding class="text-black text-body1 q-pa-none">
        <q-item clickable v-ripple to="/" active-class="text-white bg-negative">
          <q-item-section avatar>
            <q-icon name="home" />
          </q-item-section>
          <q-item-section>Home</q-item-section>
        </q-item>
        <q-item clickable v-ripple to="/books" active-class="text-white bg-negative">
          <q-item-section avatar>
            <q-icon name="book" />
          </q-item-section>
          <q-item-section>Books</q-item-section>
        </q-item>
        <q-item clickable v-ripple to="/events" active-class="text-white bg-negative">
          <q-item-section avatar>
            <q-icon name="event" />
          </q-item-section>
          <q-item-section>Events</q-item-section>
        </q-item>
        <q-item clickable v-ripple to="/about" active-class="text-white bg-negative">
          <q-item-section avatar>
            <q-icon name="person" />
          </q-item-section>
          <q-item-section>About us</q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-footer bordered class="bg-white text-primary">
      <q-tabs no-caps active-color="primary" indicator-color="transparent" class="text-grey">
        <q-tab  to="/" name="home" label="Home" />
        <q-tab name="videos" label="Videos" />
        <q-tab name="articles" label="Articles" />
      </q-tabs>
    </q-footer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style lang="scss" scoped></style>
