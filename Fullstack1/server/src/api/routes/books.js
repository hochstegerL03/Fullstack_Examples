import express from 'express';
import asyncHandler from 'express-async-handler';
import { getBooks, patchBook, deleteBook } from '../controllers/books.js';

const router = express.Router();

router.get('/', asyncHandler(getBooks));
router.patch('/:id', asyncHandler(patchBook));
router.delete('/:id', asyncHandler(deleteBook));

export default router;
