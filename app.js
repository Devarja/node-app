// my-nodejs-app/server.js
const express = require('express');
const os = require('os'); // To get hostname for demonstration

const app = express();
const port = 3000; // The port your Express app will listen on

app.get('/', (req, res) => {
  res.send(`Hello from Node.js App! Served by: ${os.hostname()}\n`);
});

app.listen(port, () => {
  console.log(`Node.js app listening at http://localhost:${port}`);
});