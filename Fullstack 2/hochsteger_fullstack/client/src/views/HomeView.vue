<script setup>
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';
import { ref } from 'vue';

const myStore = useMyStore();
const { message } = storeToRefs(myStore);
const slide = ref(1);

function alertFunc() {
  alert('Aufgrund von PLF derzeit leider nicht möglich!');
}
</script>

<template>
  <div>
    <q-img
      src="../assets/images/vienna-city-marathon-2017-vcm-laufen-sport-sportstadt-wien-zieleinlauf-burgtheater.jpg"
    ></q-img>
    <div class="text-center text-h4 q-mt-lg text-secondary">Vienna City Marathon 2023</div>
    <div class="flex justify-center q-mx-lg">
      <div class="q-my-md">
        <div class="text-body1 text-weight-bold">
          Der 40. Vienna City Marathon findet 2023 wieder wie gewohnt im Frühjahr statt und eröffnet
          Wiens Lauf-Jahr.
        </div>
        <div class="text-body2 q-my-md">
          Rund 22.000 Personen haben sich bereits für den Vienna City Marathon und die Nebenläufe
          angemeldet. Die Strecke bleibt wie in den Jahren zuvor: Der Startschuss für den Hauptlauf
          fällt wie gewohnt beim Vienna International Centre - der UNO-City. Weiter geht’s über die
          Reichsbrücke durch den Wiener Prater zur Ringstraße, vorbei an imperialen Prachtbauten,
          und von der Staatsoper hinaus zum Schloss Schönbrunn und wieder zurück zu Ring und Prater.
          Das Ziel liegt zwischen Burgtheater und Rathaus.
        </div>
        <div class="text-body1 text-center text-weight-bold q-my-md">
          Die Anmeldung ist noch bis 4. April möglich!
        </div>
        <div class="flex justify-center">
          <q-btn @click="alertFunc" class="text-center bg-white text-secondary text-uppercase"
            >Hier gehts zur anmeldung</q-btn
          >
        </div>
        <q-responsive class="q-mb-sm q-mt-md" :ratio="16 / 9">
          <q-carousel animated v-model="slide" :autoplay="4000" infinite>
            <q-carousel-slide :name="1" img-src="http://127.0.0.1:3000/slideshow/1.jpg" />
            <q-carousel-slide :name="2" img-src="http://127.0.0.1:3000/slideshow/2.jpg" />
            <q-carousel-slide :name="3" img-src="http://127.0.0.1:3000/slideshow/3.jpg" />
            <q-carousel-slide :name="4" img-src="http://127.0.0.1:3000/slideshow/4.jpg" />
            <q-carousel-slide :name="5" img-src="http://127.0.0.1:3000/slideshow/5.jpg" />
            <q-carousel-slide :name="6" img-src="http://127.0.0.1:3000/slideshow/6.jpg" />
          </q-carousel>
        </q-responsive>
      </div>
    </div>
  </div>
</template>
