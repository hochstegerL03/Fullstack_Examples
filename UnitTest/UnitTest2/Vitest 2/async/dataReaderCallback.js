import fs from 'fs';

export const readCallback = (fileName, n, callback) => {
  fs.readFile(fileName, 'utf-8', (err, data) => {
    if (err) callback(err);
    else callback(null, data.slice(0, n));
  });
};

export const readCallbackPromises = (fileName, numberOfChars) =>
  new Promise((resolve, reject) => {
    readCallback(fileName, numberOfChars, (err, result) => {
      if (err) reject(err);
      else resolve(result);
    });
  });