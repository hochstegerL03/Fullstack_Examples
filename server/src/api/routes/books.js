import express from 'express';
import asyncHandler from 'express-async-handler';
import { getBooks, patchBook } from '../controllers/books.js';

const router = express.Router();

router.get('/', asyncHandler(getBooks));
router.patch('/:id', asyncHandler(patchBook));

export default router;
