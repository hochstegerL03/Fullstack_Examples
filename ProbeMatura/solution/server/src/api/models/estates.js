import { query } from '../../db/index.js';

const getEstates = () =>
  query(
    `SELECT estates.id,
            estates.title,
            estates.image,
            estates.price,
            estates.postcode,
            estates.bedrooms,
            estates.bathrooms,
            estates.status,
            estates.type,
            estates.pics,
            estates.description,
            c.name as city,
            c.country,
            s.name as contact
     FROM estates
         JOIN cities c using(city_id)
         JOIN staff s using(staff_id)
     ORDER BY estates.price DESC`,
  );

const findEstate = (id) => query('SELECT * FROM estates WHERE id = $1', [id]);

const delEstate = (id) => query('DELETE FROM estates WHERE id = $1', [id]);

const patchEstate = (id, status) =>
  query('UPDATE estates SET status= $1 WHERE id = $2', [status, id]);

export { getEstates, delEstate, findEstate, patchEstate };
