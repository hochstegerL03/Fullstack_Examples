// eslint-disable-next-line
import colors from 'colors';

const errorHandler = (err, req, res, next) => {
  console.log(err.message);
  res.status(500).send('ERROR');
};

const notFoundHandler = (err, req, res, next) => {
  console.log(req.originalUrl);
  res.status(404).send('NOT FOUND');
  next();
};

export { errorHandler, notFoundHandler };
