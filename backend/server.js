// server.js
const express = require('express');
const app = express();
const port = 3001;
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

app.get('/api', (req, res) => {
  res.json({ message: 'Hello from the Node.js backend!' });
});

app.get('/artists', async (req, res) => {
  const artists = await prisma.artist.findMany()
  res.json({
    success: true,
    payload: artists,
    message: "Operation Successful",
  })
})

app.listen(port, () => {
  console.log(`Backend server is running on port ${port}`);
});


