const http = require('node:http') // protocolo HTTP
const { findAvailablePort } = require('./11-free_port.js')

console.log(process.env)

const desiredPort = process.env.PORT ?? 3000

const server = http.createServer((req, res) => {
  console.log('request received')
  res.end('Hola mundo')
})

findAvailablePort(desiredPort).then(port => {
  server.listen(port, () => {
    console.log(`server listening on port http://localhost:${port}`)
  })
})

/* server.listen(3000, () => {
  console.log('server listening on port http://localhost:3000')
}) */

// En caso de que el no se pueda levatar el servidor por que el puerto esta ocupado, lo que podemos hacer es esto:
// Esto nos permite que el puerto sea asignado automaticamente
/* server.listen(0, () => {
  console.log(`server listening on port http://localhost:${server.address().port}`)
})
 */
