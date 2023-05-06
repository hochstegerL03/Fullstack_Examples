import * as model from '../models/estates.js';

const getEstates = async (req, res) => res.status(200).json((await model.getEstates()).rows);

const delEstate = async (req, res) => {
  const { id } = req.params;

  const { rowCount } = await model.delEstate(id);
  if (rowCount === 0) return res.status(404).end();
  return res.status(200).end();
};

const patchEstate = async (req, res) => {
  const { id } = req.params;
  const { status } = req.body;

  const { rowCount } = await model.patchEstate(id, status);
  if (rowCount === 0) return res.status(404).end();
  return res.status(200).end();
};

export { getEstates, delEstate, patchEstate };
