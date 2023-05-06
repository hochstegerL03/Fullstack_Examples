import { query } from '../../db/index.js';

const getStaff = () => query('SELECT * FROM staff ORDER BY name');

const addStaff = async ({ name, phone, office }) =>
  query(
    `INSERT INTO staff (name, image, phone, office)
        VALUES($1,'images/staff/placeholder.jpg',$2,$3) RETURNING *`,
    [name, phone, office],
  );

export { getStaff, addStaff };
