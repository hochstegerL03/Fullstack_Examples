import colors from 'colors';

const errorHandler = (err, req, res, next) => {
  if (err) {
    console.log(colors.red(`ERROR ====> ${err.message}`));
    console.trace();
    res.status(500).send('Server error');
  } else next();
};

const notFoundHandler = (req, res, next) => {
  console.log(colors.blue(`NOT FOUND ====> ${req.originalUrl}`));
  res.status(404).send('The requested resource was not found');
  next();
};

export { errorHandler, notFoundHandler };
