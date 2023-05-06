export const toCap = ([first, ...rest]) => {
  if (first === undefined) return '';
  const regex = /[a-z]/i;
  if (!regex.test(first)) throw new Error(`first character must be a letter: ${first}`);
  return [first.toUpperCase(), ...rest].join('');
};
