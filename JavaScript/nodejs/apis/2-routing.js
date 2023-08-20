const http = require('node:http')

// commonJS -> modulos clásicos de node
const json = require('./pokemon/ditto.json')

const processRequest = (req, res) => {
  const { method, url } = req
  switch (method) {
    case 'GET':
      switch (url) {
        case '/pokemon/ditto':
          res.setHeader('Content-Type', 'application/json; charset=utf-8')
          return res.end(JSON.stringify(json))
        default:
          res.statusCode = 404
          res.setHeader('Content-Type', 'text/html; charset=utf-8')
          return res.end('<h1>Página no encontrada</h1>')
      }
    case 'POST':
      switch (url) {
        case '/pokemon': {
          let body = ''
          // Escuchar el evento data
          req.on('data', (chunk) => {
            body += chunk.toString()
          })

          // Escuchar el evento end
          req.on('end', () => {
            const data = JSON.parse(body)
            // Llamar a una base de datos para guardar la información
            res.writeHead(201, { 'content-type': 'application/json; charset=utf-8' })
            res.end(JSON.stringify(data))
          })
          break
        }
        default:
          res.statusCode = 404
          res.setHeader('Content-Type', 'text/plain; charset=utf-8')
          return res.end('<h1>404 Not Found</h1>')
      }
  }
}
const server = http.createServer(processRequest)

server.listen(3000, () => {
  console.log('server listening on port http://localhost:3000')
})
