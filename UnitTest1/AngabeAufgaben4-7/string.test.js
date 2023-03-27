import { it, expect } from 'vitest';
import { toCap } from './string.js';

it('should return the string with the first letter in uppercase', () => {
  const string = 'example';
  const result = toCap(string);
  expect(result).toBe('Example');
});

it('should return an empty string', () => {
  const string = '';
  const result = toCap(string);
  expect(result).toBe('');
});

it('should throw an error beacuse first != regex condition', () => {
  const string = '11eleven';
  const result = () => toCap(string);
  expect(result).toThrow(/first character must be a letter/);
});

it('should return an empty string', () => {
  const result = () => toCap();
  expect(result).toThrow(
    'undefined is not iterable (cannot read property Symbol(Symbol.iterator))',
  );
});
