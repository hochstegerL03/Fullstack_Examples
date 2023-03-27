import { query } from '../../db/index.js';

const dbGetElements = async () => {
  const { rows } = await query('SELECT * FROM sights');
  return rows;
};

const dbPatchElement = async (id, rating) => {
  const { rows } = await query('UPDATE sights SET rating = $1 WHERE id = $2 RETURNING *', [
    id,
    rating,
  ]);
  return rows[0];
};

export { dbGetElements, dbPatchElement };
