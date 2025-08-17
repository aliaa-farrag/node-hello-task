require('newrelic'); 
const http = require('http');
const winston = require('winston');
const { createLogger, format, transports } = winston;
const { NewrelicFormatter } = require('@newrelic/winston-enricher');

const port = process.env.PORT || 3000;

// Configure New Relic logger
const logger = createLogger({
  level: 'info',
  format: NewrelicFormatter(),
  transports: [new transports.Console()]
});

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hello Node this is Alya!\n';
  logger.info(`Request received: ${req.method} ${req.url}`); // log request
  res.end(msg);
});

server.listen(port, () => {
  logger.info(`Server running on http://localhost:${port}/`);
});