// Modulos nativos

import { arch, platform, release, totalmem, freemem, uptime, cpus } from 'node:os'

console.log('Informacion del sistema operativo: ',)
console.log('_____________________')

console.log('Arquitectura del sistema operativo: ', arch())
console.log('Nombre: del sistema operativo: ', platform())
console.log('Version del sistema operativo: ', release())
console.log('Memoria total: ', totalmem() / 1024 / 1024)
console.log('Memoria libre: ', freemem() / 1024 / 1024)
console.log('uptime: ', uptime() / 60 / 60)
console.log('CPUs: ', cpus())
