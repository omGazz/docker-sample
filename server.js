const express = require('express');
const app = express();

app.get('/', (req,res) => {
  res.send("Hello Docker WOOOHOOOO!");
});

const PORT = 3000
app.listen(PORT);
console.log(`Port: ${PORT}`);