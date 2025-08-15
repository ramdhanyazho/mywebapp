const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('<h1>Hello from Kubernetes! í ½íº€</h1><p>This app is running inside a Docker container.</p>');
});

app.listen(port, () => {
    console.log(`App running on http://0.0.0.0:${port}`);
});

