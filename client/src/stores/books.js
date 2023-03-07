import { defineStore } from 'pinia';
import axios from 'axios';

export const useBookStore = defineStore('bookStore', {
  state: () => ({ books: [] }),
  getters: {},
  actions: {
    async getBooks() {
      const { data } = await axios.get('http://localhost:3000/books');
      this.books = data;
    },
    async patchbook(book) {
      try {
        await axios.patch(`http://localhost:3000/books/${book.bid}`, book);
        await this.getBooks();
        return;
      } catch (error) {}
    },
  },
});
