const response = require('./response')
const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'db_bojonegoro',
  password: '123',
  port: 5432,
})


const getKecamatans = (request, res) => {
    pool.query('SELECT * FROM kecamatan ORDER BY id ASC', (error, results) => {
      if (error) {
        throw error
      }
      res.header("Access-Control-Allow-Origin", "*")
      res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
      response(200, results.rows, "get data", res)
    })
  }

  const getKecamatanById = (request, response) => {
    const id = parseInt(request.params.id)
  
    pool.query('SELECT * FROM kecamatan WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const createKecamatan = (request, response) => {
    const { nama_kecamatan, jumlah_kelurahan, jumlah_desa } = request.body
  
    pool.query('INSERT INTO kecamatan (nama_kecamatan, jumlah_kelurahan, jumlah_desa) VALUES ($1, $2, $3) RETURNING *', [nama_kecamatan, jumlah_kelurahan, jumlah_desa], (error, results) => {
      if (error) {
        throw error
      }
      response.status(201).send(`Kecamatan telah ditambahkan dengan ID: ${results.rows[0].id}`)
    })
  }

  const updateKecamatan = (request, response) => {
    const id = parseInt(request.params.id)
    const { nama_kecamatan, jumlah_kelurahan, jumlah_desa } = request.body
  
    pool.query(
      'UPDATE kecamatan SET nama_kecamatan = $1, jumlah_kelurahan = $2, jumlah_desa = $3 WHERE id = $4',
      [nama_kecamatan, jumlah_kelurahan, jumlah_desa, id],
      (error, results) => {
        if (error) {
          throw error
        }
        response.status(200).send(`Data Kecamatan sudah di update dengan ID: ${id}`)
      }
    )
  }

  const deleteKecamatan = (request, response) => {
    const id = parseInt(request.params.id)
  
    pool.query('DELETE FROM kecamatan WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`Data Kecamatan telah di hapus dengan ID: ${id}`)
    })
  }

  module.exports = {
    getKecamatans,
    getKecamatanById,
    createKecamatan,
    updateKecamatan,
    deleteKecamatan,
  }