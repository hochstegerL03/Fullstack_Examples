import * as model from '../models/staff.js';

const getStaff = async (req, res) =>
  res.status(200).json((await model.getStaff()).rows);

const addStaff = async (req, res) => res.status(200).json((await model.addStaff(req.body)).rows[0]);

export { getStaff, addStaff };
