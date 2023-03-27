<script setup>
import { onMounted, ref, unref } from 'vue';
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';
const myStore = useMyStore();
const flavors = ref();
const props = defineProps({ id: String });
onMounted(async () => {
  await myStore.getFlavors();
  flavors.value = unref(myStore.flavors);
  flavors.value = flavors.value.find((el) => el.name == props.id);
  console.log(flavors.value);
});
</script>
<template>
  <div class="row justify-center q-mt-md q-ma-lg">
    <div class="col-12 q-mb-md text-center text-h5 text-weight-bold">{{ flavors.name }}</div>
    <div class="col-6"><q-img :src="`http://localhost:3000/images/${flavors.image}`"></q-img></div>
    <div class="col-12 q-my-md text-center text-h4">Price: {{ flavors.price }}€</div>
    <q-btn class="bg-secondary  text-white" label="Back" to="/flavors" />
  </div>
</template>
