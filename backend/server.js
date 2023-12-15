// server.js
const express = require('express');
const app = express();
const port = 3001;

app.get('/api', (req, res) => {
  res.json({ message: 'Hello from the Node.js backend!' });
});

app.listen(port, () => {
  console.log(`Backend server is running on port ${port}`);
});
