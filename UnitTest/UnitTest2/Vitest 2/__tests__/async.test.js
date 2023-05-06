import { it, expect, describe } from 'vitest';
import { readPromise } from '../async/dataReaderPromise.js';
import { readCallback, readCallbackPromises } from '../async/dataReaderCallback.js';

describe('readPromise()', () => {
  it('reads the first n bytes of a specified file in UTF-8 format', async () => {
    const fileName = 'data/demo.txt';
    const numberOfChars = 22;
    const result = readPromise(fileName, numberOfChars);
    expect(result).resolves.toContain('Das ist ein async Test');
  });

  it('throws an exception if the specified file is not found', async () => {
    const fileName = 'keine datei';
    const numberOfChars = 22;
    const result = readPromise(fileName, numberOfChars);
    expect(result).rejects.toThrow(/no such file or directory/);
  });
});


describe('readCallback()', () => {
  it('reads the first n bytes of a specified file in UTF-8 format', async () => {
    const fileName = 'data/demo.txt';
    const numberOfChars = 22;
    const result = readCallbackPromises(fileName, numberOfChars);
    expect(result).resolves.toContain('Das ist ein async Test');
  });

  it('throws an exception if the specified file is not found', async () => {
    const fileName = 'keine datei';
    const numberOfChars = 22;
    const result = readCallbackPromises(fileName, numberOfChars);
    expect(result).rejects.toThrow(/no such file or directory/);
  });
});