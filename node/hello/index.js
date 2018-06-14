const express = require('express')
const app = express()

const hello_message = `Hello world with NODE_ENV=${process.env.NODE_ENV}`
app.get('/', (_req, res) => res.send(hello_message))

app.get('/healthy', (_req, res) => res.send(''))

app.listen(process.env.PORT,
           () => console.log(`Listening on port ${process.env.PORT}`))
