const express = require('express');
const app = express();

// Optional: Root route to confirm it's online
app.get('/', (req, res) => {
  res.send('✅ Monero miner keepalive server running!');
});

// Get the port from Replit or default to 3000
const PORT = process.env.PORT || 3000;

// Start the server
app.listen(PORT, () => {
  console.log(`✅ Keepalive server is listening on port ${PORT}`);
});
