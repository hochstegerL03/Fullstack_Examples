import express from 'express';
import asyncHandler from 'express-async-handler';
import { getElements, patchElement } from '../controllers/routes.js';

const router = express.Router();

router.get('/', asyncHandler(getElements));
router.patch('/:id', asyncHandler(patchElement));

export default router;
