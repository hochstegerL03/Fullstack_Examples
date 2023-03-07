<script setup>
import { ref, onMounted, unref } from 'vue';
import { storeToRefs } from 'pinia';
import { useBookStore } from '../stores/books.js';

const bookStore = useBookStore();
const books = ref();
const currBook = ref();
const showEditor = ref(false);
onMounted(async () => {
  await bookStore.getBooks();
  books.value = storeToRefs(bookStore).books.value;
  console.log(books.value);
});

const editBook = (book) => {
  currBook.value = unref({ ...book });
  showEditor.value = true;
};

const deleteBook = (book) => {};

const saveChanges = async () => {
  console.log(currBook.value);
  await bookStore.patchbook(currBook.value);
  books.value = storeToRefs(bookStore).books.value;
  currBook.value = {};
};

const columns = [
  { name: 'image', align: 'center', field: 'image' },
  { name: 'title', align: 'center', field: 'title' },
  { name: 'name', align: 'center', field: 'name' },
  { name: 'pages', align: 'center', field: 'pages' },
  { name: 'change', align: 'center' },
  { name: 'delete', align: 'center' },
];
</script>

<template>
  <div class="flex justify-center">
    <q-table
      class="q-ma-xl"
      hide-header
      flat
      hide-bottom
      :pagination="{ rowsPerPage: 0 }"
      style="width: 100%"
      :rows="books"
      :columns="columns"
      row-key="bid"
    >
      <template #body-cell-image="prop">
        <q-td :prop="prop">
          <q-img
            style="width: 100px"
            :src="`http://localhost:3000/${prop.row.image}`"
            crossorigin="anonymous"
        /></q-td>
      </template>
      <template #body-cell-change="prop">
        <q-td :prop="prop" @click="editBook(prop.row)">
          <q-icon class="text-h5 text-green" name="edit" />
        </q-td>
      </template>
      <template #body-cell-delete="prop">
        <q-td :prop="prop" @click="deleteBook(prop.row)">
          <q-icon class="text-h5 text-red" name="delete" />
        </q-td>
      </template>
    </q-table>

    <q-dialog v-model="showEditor" persistent>
      <q-card style="min-width: 350px">
        <q-card-section class="row items-center q-pb-none">
          <div class="text-h6">Edit Title of Book</div>
          <q-space />
          <q-btn icon="close" flat round dense v-close-popup />
        </q-card-section>

        <q-card-section class="q-pt-none">
          <div class="q-gutter-lg q-mt-lg">
            <q-input
              filled
              v-model="currBook.title"
              label="The title of the selected book"
            /><q-input type="number" filled v-model="currBook.pages" label="The number of pages" />
          </div>
        </q-card-section>

        <q-card-actions align="center" class="text-primary">
          <q-btn @click="saveChanges()" class="bg-green text-white" label="Save" v-close-popup />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>

<style lang="scss" scoped></style>
