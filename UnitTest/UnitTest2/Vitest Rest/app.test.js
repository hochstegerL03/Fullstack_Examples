import { app } from './app.js';
import { describe, it, expect } from 'vitest';
import request from 'supertest';

describe('GET /', () => {
  it('should return greeting message', async () => {
    const url = '/';
    const res = await request(app).get(url).expect(200);
    expect(res.body).toEqual({ text: 'Hello from HTL Wien West!' });
  });
});

describe('GET /persons', () => {
  it('should return all entries from person.js', async () => {
    const url = '/persons2';
    const res = await request(app).get(url).expect(404);
  });

  it('should return all entries from person.js', async () => {
    const url = '/persons';
    const res = await request(app).get(url).expect(200);
    expect(res.body).toHaveLength(4);
  });

  it('should return an array of entries', async () => {
    const res = await request(app).get('/persons');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toBeInstanceOf(Array);
  });

  it('should return the necessary properties', async () => {
    const res = await request(app).get('/persons').expect(200);
    expect(res.body[0]).toHaveProperty('firstName');
    expect(res.body[0]).toHaveProperty('lastName');
    expect(res.body[0]).toHaveProperty('age');
    expect(res.body[0]).toHaveProperty('status');
  });
});

describe('GET a 404 if route is unknown', () => {
  it('should a message', async () => {
    const url = '/unkown';
    const res = await request(app).get(url).expect(404);
    expect(res.body).toEqual({ text: 'The ressource was not found in this server' });
  });
});


