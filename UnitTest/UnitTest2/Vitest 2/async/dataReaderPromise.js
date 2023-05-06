import fs from 'fs/promises';

export const readPromise = async (fileName, n) => {
  const data = await fs.readFile(fileName, 'utf-8');
  return data.slice(0, n);
};
