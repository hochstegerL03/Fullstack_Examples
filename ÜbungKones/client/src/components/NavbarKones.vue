<script setup>
import SocialIcons from './SocialIcons.vue';
defineEmits(['toggleDrawer']);
</script>

<template>
  <q-header elevated class="bg-primary text-white" height-hint="98">
    <q-toolbar class="row">
      <div class="col-4">
        <q-btn class="lt-sm" dense flat round icon="menu" @click="$emit('toggleDrawer')" />
      </div>
      <q-toolbar-title class="col-4 q-my-md" align="center">
        <q-img src="@/assets/brand-name.png" />
      </q-toolbar-title>
      <div class="col-4 self-stretch q-mt-md">
        <div class="row justify-end items-start gt-xs">
          <SocialIcons></SocialIcons>
        </div>
      </div>
    </q-toolbar>

    <q-tabs align="center" class="gt-xs">
      <q-route-tab to="/" label="Home" />
      <q-route-tab to="/flavors" label="Flavors" />
      <q-route-tab to="/order" label="Order" />
      <q-route-tab to="/locations" label="Locations" />
    </q-tabs>
  </q-header>
</template>

<style></style>
