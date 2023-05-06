<script setup>
defineProps({ contact: Object });
</script>

<template>
  <q-card style="width: 15rem">
    <q-img :src="`http://localhost:3000/${contact.image}`" />

    <q-card-section>
      <p class="text-h6">{{ contact.name }}</p>
      <p><span class="text-bold">Phone: </span><br />{{ contact.phone }}</p>
      <p><span class="text-bold">Office: </span><br />{{ contact.office }}</p>
    </q-card-section>
  </q-card>
</template>
