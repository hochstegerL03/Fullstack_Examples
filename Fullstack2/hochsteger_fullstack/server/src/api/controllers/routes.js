import { dbGetElements, dbPatchElement } from '../models/routes.js';

const getElements = async (req, res) => {
  res.status(200).json(await dbGetElements());
};

const patchElement = async (req, res) => {
  const { id } = req.params;
  const { rating } = req.body;
  const status = await dbPatchElement(id, rating);
  if (status) {
    res.status(200).json(status);
  } else {
    res.status(404).send('Not Found');
  }
};

export { getElements, patchElement };
