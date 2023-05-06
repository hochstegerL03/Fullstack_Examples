<script setup>
import NavBar from "./components/NavBar.vue";
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <NavBar></NavBar>
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style>
@font-face {
  font-family: "Montserrat";
  src: url("/fonts/Montserrat/Montserrat-Regular.ttf") format("truetype");
}

@font-face {
  font-family: "PlayfairMedium";
  src: url("/fonts/Playfair/PlayfairDisplay-Medium.ttf") format("truetype");
}

* {
  font-family: "Montserrat";
}
</style>
