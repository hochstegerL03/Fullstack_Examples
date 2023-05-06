import express from 'express';
import asyncHandler from 'express-async-handler';

import { getStaff, addStaff } from '../controllers/staff.js';

const router = express.Router();

router.get('/', asyncHandler(getStaff));
router.post(
  '/',
  asyncHandler((req, res) => {
    console.log(req.body);
    return res.status(200).end();
  }),
);

export default router;
