import express from 'express';
import persons from './data/persons.json' assert { type: 'json' };
export const app = express();

app.get('/', (req, res) => res.status(200).json({ text: 'Hello from HTL Wien West!' }));
app.get('/persons', (req, res) => res.status(200).json(persons));

app.get('*', (req, res) =>
  res.status(404).json({ text: 'The ressource was not found in this server' }),
);
