import { query, pool } from '../../db/index.js';

const dbGetStaff = async () => {
  const { rows } = await query('SELECT * FROM staff');
  return rows;
};

export { dbGetStaff };
