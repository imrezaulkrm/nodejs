const http = require('http');

// Create an HTTP server
const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('hi i am jenkins \n');
});

// Listen on port 3000
server.listen(3000, '0.0.0.0', () => {
  console.log('Server is listening on port 3000');
});

