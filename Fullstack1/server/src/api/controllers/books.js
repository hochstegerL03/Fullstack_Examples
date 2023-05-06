import { dbGetBooks, dbPatchBook, dbDeleteBook } from '../models/books.js';

const getBooks = async (req, res) => {
  res.status(200).json(await dbGetBooks());
};

const patchBook = async (req, res) => {
  const status = await dbPatchBook(req.body);

  if (status) {
    res.status(200).json(status);
  } else {
    res.status(404).send('Not Found');
  }
};

const deleteBook = async (req, res) => {
  const status = await dbDeleteBook(req.params.id);
  if (status) {
    res.status(200).json(status);
  } else {
    res.status(404).send('Not Found');
  }
};

export { getBooks, patchBook, deleteBook };
