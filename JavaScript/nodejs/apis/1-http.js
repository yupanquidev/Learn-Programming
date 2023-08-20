const http = require('node:http') // protocolo HTTP

const desiredPort = process.env.PORT ?? 3000

const processRequest = (req, res) => {
  res.setHeader('Content-Type', 'text/html; charset=utf-8')

  if (req.url === '/') {
    res.end('<h1>Bienvenido a la página principal</h1>')
  } else if (req.url === '/contacto') {
    res.end('<h1>Bienvenido a la página de contacto</h1>')
  } else {
    res.end('<h1>Página no encontrada</h1>')
  }
}

const server = http.createServer(processRequest)

server.listen(desiredPort, () => {
  console.log(`server listening on port http://localhost:${desiredPort}`)
})
