import { query, pool } from '../../db/index.js';

const dbGetBooks = async () => {
  const { rows } = await query(
    'SELECT b.bid, b.title, b.image, b.pages, a.name FROM books b JOIN books_authors USING(bid) JOIN authors as a USING(aid);',
  );
  return rows;
};

const dbDeleteBook = async (id) => {
  const { rows } = await query('DELETE FROM books WHERE bid = $1 RETURNING *', [id]);
  return rows;
};

const dbPatchBook = async (book) => {
  console.log(book);
  const client = await pool.connect();
  await client.query('BEGIN');
  try {
    console.log('hey');
    const sBook = await client.query('SELECT * FROM books WHERE bid = $1', [book.bid]);
    console.log(sBook.rows[0]);
    if (sBook.rows[0]) {
      const { rows } = await client.query(
        'UPDATE books SET title = $1, pages = $2 WHERE bid = $3 RETURNING *',
        [book.title, book.pages, book.bid],
      );
      console.log('AAAAAAAAAaa');
      await client.query('COMMIT');
      return rows[0];
    }
    throw new Error('Not found');
  } catch (error) {
    await client.query('ROLLBACK');
    return null;
  } finally {
    client.release();
  }
};

export { dbGetBooks, dbPatchBook, dbDeleteBook };
