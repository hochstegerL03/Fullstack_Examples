import express from 'express';
import asyncHandler from 'express-async-handler';
import { Test, getEstates, reserve } from '../controllers/immoworld.js';

const router = express.Router();

router.get('/test', asyncHandler(Test));
router.get('/', asyncHandler(getEstates));
router.patch('/:id', asyncHandler(reserve));

export default router;
