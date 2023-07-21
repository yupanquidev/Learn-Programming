const fs = require('node:fs/promises')

// Hacer un DIR o LS
fs.readdir('.')
  .then(files => {
    files.forEach(file => {
      console.log(file)
    })
  })
  .catch(err => {
    if (err) {
      console.error('Error al leer el directorio: ', err)
      return
    }
  })
