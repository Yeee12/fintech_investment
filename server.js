// server.js
const express = require('express');
const app = express();
const port = 3000;

// Middleware to parse JSON data
app.use(express.json());

// Mock database (for testing purposes)
let users = [];

// Registration endpoint
app.post('/register', (req, res) => {
  const { fullName, email, password } = req.body;

  // Simple validation
  if (!fullName || !email || !password) {
    return res.status(400).json({ message: 'Full name, email, and password are required' });
  }

  // Simulate saving user to the database
  const user = { id: users.length + 1, fullName, email, password };
  users.push(user);

  // Respond with the created user (excluding password in real-world apps)
  res.status(201).json({ message: 'User registered successfully', user: { id: user.id, fullName, email } });
});

// Basic route for testing
app.get('/', (req, res) => {
  res.send('Welcome to my API');
});

// Start the server
app.listen(port, () => {
  console.log(`API running on http://localhost:${port}`);
});
