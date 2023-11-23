// Modulos nativos

// 1
const os = require('node:os')

console.log('Informacion del sistema operativo: ')
console.log('_____________________')

console.log('Arquitectura del sistema operativo: ', os.arch())
console.log('Nombre: del sistema operativo: ', os.platform())
console.log('Version del sistema operativo: ', os.release())
console.log('Memoria total: ', os.totalmem() / 1024 / 1024)
console.log('Memoria libre: ', os.freemem() / 1024 / 1024)
console.log('uptime: ', os.uptime() / 60 / 60)
console.log('CPUs: ', os.cpus())
