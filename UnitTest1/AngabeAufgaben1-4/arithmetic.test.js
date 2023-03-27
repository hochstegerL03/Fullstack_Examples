import { it, expect } from 'vitest';
import { add } from './arithmetic.js';

it('should add all number values in the parameter list', () => {
  const nums = [1, 2, 3, 4, 5]; // Arrange
  const result = add(...nums); // Act = Aufruf der zu testenden Funktion
  expect(result).toBe(15); // Assert
});

it('should spread the array and add up all values to a number', () => {
  const nums = [1, 2, 3, 4, 5]; // Arrange
  const result = add(nums); // Act = Aufruf der zu testenden Funktion
  expect(result).toBe(15); // Assert
});

it('should return NaN because of the wrong data type of String', () => {
  const string = '12';
  const result = add(string);
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
  expect(resultFn).toThrow(/Too many numbers!/);
});
