const add = (...numbers) => {
  const numbersArray = numbers.flat(); // remove any extra brackets
  const allNumbers = numbersArray.every((el) => typeof el === 'number');

  if (!allNumbers) return NaN;

  if (numbersArray.length > 10) throw new Error('too many numbers!');
  return numbersArray.flat().reduce((acc, el) => acc + el, 0);
};

const mul = (...numbers) => {
  const numbersArray = numbers.flat(); // remove any extra brackets
  const allNumbers = numbersArray.every((el) => typeof el === 'number');

  if (!allNumbers) return NaN;

  if (numbersArray.length === 0) return 0;

  if (numbersArray.length > 10) throw new Error('too many numbers!');
  return numbersArray.flat().reduce((acc, el) => acc * el, 1);
};

export { add, mul };
