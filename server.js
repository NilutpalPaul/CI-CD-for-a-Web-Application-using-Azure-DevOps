const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello, this is the backend of the simple web app!');
});

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});
