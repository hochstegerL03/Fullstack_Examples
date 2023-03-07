import { dbGetBooks, dbPatchBook } from '../models/books.js';

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

export { getBooks, patchBook };
