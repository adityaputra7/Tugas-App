const db = require('./queries')
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 80

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
  response.json({ info: 'Node.js, Express, and Postgres API' })
})

app.get('/kecamatan', db.getKecamatans)
app.get('/kecamatan/:id', db.getKecamatanById)
app.post('/kecamatan', db.createKecamatan)
app.put('/kecamatan/:id', db.updateKecamatan)
app.delete('/kecamatan/:id', db.deleteKecamatan)

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})