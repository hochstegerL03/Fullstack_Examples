import { it, expect, describe } from 'vitest';
import { randomNumberArray, squaredNumberArray } from '../array.js';

describe('randomNumberArray()', () => {
  it('should return an array', () => {
    const numberValue = 5;
    const result = randomNumberArray(numberValue);
    expect(Object.prototype.toString.call(result)).toBe('[object Array]');
  });

  it('should return an empty array if no parameter is provided', () => {
    const result = randomNumberArray();
    expect(result).toStrictEqual([]);
  });
});

describe('squaredNumberArray()', () => {
  it('should return an array with squared numbers', () => {
    const result = squaredNumberArray(2);
    expect(result).toStrictEqual([1, 4]);
  });

  it('should return an empty array', () => {
    const result = squaredNumberArray();
    expect(result).toStrictEqual([]);
  });

  it('should throw an error', () => {
    const result = () => squaredNumberArray("a");
    expect(result).toThrowError(/argument must be a number/);
  });
});
