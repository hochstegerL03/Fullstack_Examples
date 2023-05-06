import { dbGetStaff } from '../models/staff.js';

const getStaff = async (req, res) => {
  res.status(200).json(await dbGetStaff());
};

export { getStaff };
