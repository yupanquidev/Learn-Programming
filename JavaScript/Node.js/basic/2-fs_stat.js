// File system - sistema de archivos
const fs = require('node:fs') // A partir de Node 16, se recomienda usar el prefijo node: para los modulos nativos.

// Leer archivos sincronicamente
const stats = fs.statSync('./archivo.txt')
console.log(
  stats.isFile(), // Si es un fichero
  stats.isDirectory(), // Si es un directorio
  stats.isSymbolicLink(), // si es un enlace simbolico
  stats.size // Tamaño en bytes
)
