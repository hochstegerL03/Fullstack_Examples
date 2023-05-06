const randomNumberArray = (endValue) => {
  if (endValue == undefined) return [];
  if (typeof endValue != 'number') throw new Error('argument must be a number');
  return Array.from(new Array(endValue), () => Math.round(Math.random() * 100));
};

const squaredNumberArray = (endValue) => {
  if (endValue == undefined) return [];
  if (typeof endValue != 'number') throw new Error('argument must be a number');
  return Array.from(new Array(endValue), (_, i) => (i + 1) ** 2);
};

export { randomNumberArray, squaredNumberArray };
