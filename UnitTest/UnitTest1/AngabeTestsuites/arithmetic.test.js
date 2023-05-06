import { it, expect, describe } from 'vitest';
import { add, mul } from './arithmetic.js';

describe('add()', () => {
  it('should add all number values in the parameter list', () => {
    const nums = [1, 2, 3, 4, 5];
    let result = add(...nums);
    expect(result).toBe(15);

    const num = 12;
    result = add(num);
    expect(result).toBe(12);
  });

  it('should add all numbers in an array', () => {
    const nums = [1, 2, 3, 4, 5];
    const result = add(nums);
    expect(result).toBe(15);
  });

  it('should return NaN if at least one invalid input is provided', () => {
    let str = '12';
    let result = add(str);
    expect(result).toBe(NaN);
  });

  it('should return 0 if an empty array is provided', () => {
    const nums = [];
    const result = add(nums);
    expect(result).toBe(0);
  });

  it('should return 0 if no input is provided', () => {
    const result = add();
    expect(result).toBe(0);
  });

  it('should throw an error if more than 10 numbers are provided', () => {
    const nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    const resultFn = () => add(nums);
    expect(resultFn).toThrow(/too many numbers!/);
  });
});

describe('mul()', () => {
  it('should multiply all number values in the parameter list', () => {
    const nums = [1, 2, 3, 4, 5];
    let result = mul(...nums);
    expect(result).toBe(120);

    const num = 12;
    result = mul(num);
    expect(result).toBe(12);
  });

  it('should multiplay all numbers in an array', () => {
    const nums = [1, 2, 3, 4, 5];
    const result = mul(nums);
    expect(result).toBe(120);
  });

  it('should return NaN if at least one invalid input is provided', () => {
    let str = '12';
    let result = mul(str);
    expect(result).toBe(NaN);
  });

  it('should return 0 if an empty array is provided', () => {
    const nums = [];
    const result = mul(nums);
    expect(result).toBe(0);
  });

  it('should return 0 if no input is provided', () => {
    const result = mul();
    expect(result).toBe(0);
  });

  it('should throw an error if more than 10 numbers are provided', () => {
    const nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    const resultFn = () => mul(nums);
    expect(resultFn).toThrow(/too many numbers!/);
  });
});
