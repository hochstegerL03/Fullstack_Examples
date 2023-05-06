import express from 'express';
import asyncHandler from 'express-async-handler';

import { getEstates, delEstate, patchEstate } from '../controllers/estates.js';

const router = express.Router();

router.get('/', asyncHandler(getEstates));
router.patch('/:id', asyncHandler(patchEstate));
router.delete('/:id', asyncHandler(delEstate));

export default router;
