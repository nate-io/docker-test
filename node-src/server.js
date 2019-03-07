'use strict';

const express = require('express');

// Constants - hello .env!
const PORT = 8080;
const HOST = '0.0.0.0';

// App 
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world\n');
});

app.listen(PORT);
console.log(`Running on http://${HOST}:${PORT}`);