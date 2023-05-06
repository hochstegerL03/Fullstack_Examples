import { dbTest, dbGetEstates, dbReserve } from '../models/immoworld.js';

const Test = async (req, res) => {
  res.status(200).json(await dbTest());
};
const getEstates = async (req, res) => {
  res.status(200).json(await dbGetEstates());
};
const reserve = async (req, res) => {
  const result = await dbReserve(req.body.status, req.params.id);
  if (result) return res.status(200).json(result);
  return res.status(404).send('Cannot be Reserved');
};

export { Test, getEstates, reserve };
