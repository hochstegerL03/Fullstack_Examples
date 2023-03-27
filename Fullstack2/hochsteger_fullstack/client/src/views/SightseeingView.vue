<script setup>
import { useQuasar } from 'quasar';
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';
import { ref, onMounted } from 'vue';
import axios from 'axios';

const $q = useQuasar();
const myStore = useMyStore();
const showDialog = ref(false);
const currObj = ref();
const { message } = storeToRefs(myStore);
const slide = ref(1);
const visibleColumns = () => {
  const cols = ['title', 'rating'];
  if ($q.screen.gt.xs) cols.push('description', 'image');
  return cols;
};
const columns = [
  { name: 'image', field: 'image' },
  { name: 'title', field: 'title' },
  { name: 'description', field: 'description' },
  { name: 'rating', field: 'rating' },
];

onMounted(async () => {
  await myStore.getSights();
  console.log(myStore.sights);
});
function show(obj) {
  showDialog.value = true;
  currObj.value = obj;
}

async function patchObj() {
  console.log(currObj);
  await axios.patch(`http://127.0.0.1:3000/sights/${currObj.value.id}`, currObj.value);
}

function alertFunc() {
  alert('Aufgrund von PLF derzeit leider nicht möglich!');
}
</script>

<template>
  <div>
    <q-img src="../assets/images/1-blick-auf-die-ringstrasse-40707.jpg"></q-img>
    <div class="text-center text-secondary text-h5 q-mt-md">Sightseeing in Wien</div>
    <div class="flex justify-center q-mx-md">
      <div style="width: 100%">
        <div class="text-body2 q-my-md">
          Es gibt viel zu sehen: Vom gotischen Stephansdom über die imperiale Hofburg bis zu
          Jugendstil, vom Barockschloss Schönbrunn über spannende Museen bis zu aktueller
          Architektur.
        </div>
        <!-- <q-responsive :ratio="16 / 9"> -->
        <q-table
          wrap-cells
          style="width: 100%"
          :rows="myStore.sights"
          :columns="columns"
          row-key="id"
          :visible-columns="visibleColumns()"
          hide-header
        >
          <template #body-cell-image="prop">
            <q-td :prop="prop" class="gt-xs">
              <q-img
                style="width: 33vw"
                :src="`http://localhost:3000${prop.row.image}`"
                crossorigin="anonymous"
              />
            </q-td>
          </template>
          <template #body-cell-title="prop">
            <q-td :prop="prop">
              <div>
                <div class="text-weight-bold text-h6">{{ prop.row.title }}</div>
                <div class="q-mt-md subtitle1"><b>Eintritt:</b> {{ prop.row.admission }}</div>
              </div>
            </q-td>
          </template>
          <template #body-cell-description="prop">
            <q-td :prop="prop" class="gt-xs">
              <div>
                <p>{{ prop.row.description }}</p>
              </div>
            </q-td>
          </template>
          <template #body-cell-rating="prop">
            <q-td :prop="prop">
              <div class="flex justify-center">
                <q-rating
                  size="1.2em"
                  color="yellow-10"
                  :max="5"
                  v-model="prop.row.rating"
                  readonly
                ></q-rating>
              </div>
              <q-btn flat @click="show(prop.row)" class="text-center text-body2"
                >Neue Bewerten</q-btn
              >
            </q-td>
          </template>
        </q-table>
        <!-- </q-responsive> -->
      </div>
    </div>
    <q-dialog v-model="showDialog">
      <q-card>
        <q-card-section>
          <q-img :src="`http://localhost:3000${currObj.image}`"></q-img>
        </q-card-section>

        <q-card-section class="q-pt-none">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum repellendus sit voluptate
          voluptas eveniet porro. Rerum blanditiis perferendis totam, ea at omnis vel numquam
          exercitationem aut, natus minima, porro labore.
        </q-card-section>

        <q-card-actions align="right">
          <q-btn @click="patchObj" flat label="Bewerten" v-close-popup />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>
