import express from 'express';
import asyncHandler from 'express-async-handler';
import { getStaff } from '../controllers/staff.js';

const router = express.Router();

router.get('/', asyncHandler(getStaff));
router.patch(
  '/comment',
  asyncHandler((req, res) => {
    console.log(req.body.comment);
  }),
);
export default router;
