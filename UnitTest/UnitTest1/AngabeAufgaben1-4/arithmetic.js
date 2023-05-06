export const add = (...numbers) => {
  const allNumbers = numbers.flat().every((el) => typeof el === 'number');
  numbers = numbers.flat();
  if (!allNumbers) return NaN;
  if (numbers.length > 10) throw new Error('Too many numbers!');
  return numbers.reduce((acc, el) => acc + el, 0);
};
