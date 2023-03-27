<script setup>
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';

const myStore = useMyStore();
const { message } = storeToRefs(myStore);
</script>

<template>
  <div class="column">
    <div class="row items-stretch" style="width: 100%">
      <div class="col-sm-7 col-12">
        <q-img style="height: 100%; width: 100%" src="/images/box.webp" />
      </div>
      <div class="col-sm-5 col-12"><q-img src="/images/bundle.webp"></q-img></div>
    </div>
    <div class="row items-stretch" style="width: 100%">
      <div class="col-sm-5 col-12">
        <div style="height: 100%" class="q-ma-lg column items-center justify-center">
          <div class="q-my-sm text-uppercase text-weight-bolder text-h5">Our Philosophy</div>
          <div class="q-my-sm text-weight-bold text-body1">
            At Kind Kones, we only use ingredients you’d find in your own kitchen – Nothing derived
            from a food laboratory.
          </div>
          <div class="q-my-sm q-mb-lg text-body2">
            While we take every precaution to prevent cross-contamination and provide a pleasant
            experience for customers with dietary needs, we do make our products in a facility with
            peanuts, tree nuts, coconut, and gluten. If you have any allergies, we will be happy to
            make reasonable accommodations at your request but we cannot guarantee any of our
            products are allergen-free. We encourage you to communicate with your server and use
            your own best judgement in determining what is best for your needs.
          </div>
        </div>
      </div>
      <div class="col-sm-7 col-12">
        <q-img style="height: 100%; width: 100%" src="/images/AlmondBrittleFudge02.webp"></q-img>
      </div>
    </div>
  </div>
</template>
