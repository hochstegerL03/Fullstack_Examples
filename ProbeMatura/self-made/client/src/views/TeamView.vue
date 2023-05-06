<script setup>
import { ref, onMounted } from 'vue';
import { storeToRefs } from 'pinia';
import { useRealEstateStore } from '../stores/realEstateStore.js';

const realEstateStore = useRealEstateStore();
const staff = ref();
const comment = ref();
onMounted(async () => {
  await realEstateStore.getStaff();
  staff.value = storeToRefs(realEstateStore).staff.value;
});

async function createComment(comment) {
  await realEstateStore.sendComment(comment);
  comment.value = '';
}
</script>

<template>
  <div>
    <div class="row justify-center q-gutter-md">
      <q-card class="col-sm-2 col-10" v-for="(s, index) in staff" :key="index">
        <img :src="`http://localhost:3000/${s.image}`" crossorigin="anonymous" />

        <q-card-section>
          <div class="text-body2">{{ s.name }}</div>
        </q-card-section>
        <q-card-section>
          <div class="text-weight-bold">Phone:</div>
          <div class="text-caption">{{ s.phone }}</div>
        </q-card-section>
        <q-card-section
          ><div class="text-weight-bold">Office:</div>
          <div class="text-caption">{{ s.office }}</div></q-card-section
        >
      </q-card>
    </div>
    <div class="column items-center">
      <div class="q-mt-md">Message to the office team</div>
      <textarea v-model="comment" />
      <q-btn @click="createComment(comment)" flat class="bg-secondary q-mt-md">Send Message</q-btn>
    </div>
  </div>
</template>
