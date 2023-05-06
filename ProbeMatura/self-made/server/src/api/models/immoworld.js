import { query, pool } from '../../db/index.js';

const dbTest = async () => {
  const { rows } = await query("SELECT 'It works' as test");
  return rows;
};

const dbGetEstates = async () => {
  const { rows } = await query(
    'SELECT e.*, s.image as simage, s.name as sname, c.name as cname, c.country as country, s.phone, s.office FROM estates e JOIN cities c USING(city_id) JOIN staff s USING(staff_id)',
  );
  return rows;
};

const dbReserve = async (status, id) => {
  const { rows } = await query('UPDATE estates SET status = $1 WHERE id = $2 RETURNING *', [
    status,
    id,
  ]);
  return rows;
};

export { dbTest, dbGetEstates, dbReserve };
