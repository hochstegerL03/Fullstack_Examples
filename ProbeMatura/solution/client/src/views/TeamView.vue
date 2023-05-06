<script setup>
import { onMounted, ref } from "vue";
import { useEstatesStore } from "../stores/estatesStore";
import StaffCard from "@/components/StaffCard.vue";

const estatesStore = useEstatesStore();

const comment = ref("");

onMounted(async () => estatesStore.getStaff());
</script>
<template>
  <div class="row wrap justify-center">
    <StaffCard
      :contact="contact"
      v-for="(contact, i) of estatesStore.staff"
      :key="i"
      class="q-ma-sm"
    ></StaffCard>
  </div>
  <div class="column items-center q-my-lg q-mx-md">
    <div class="col-6">
      <p class="text-center">Message to office team</p>
      <textarea
        rows="5"
        cols="40"
        v-model="comment"
        placeholder="Your Message"
      ></textarea>
      <q-btn
        @click="estatesStore.sendMessage(comment)"
        flat
        class="q-mx-auto block bg-secondary q-mt-md"
        >Send Message</q-btn
      >
    </div>
  </div>
</template>
