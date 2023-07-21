const path = require('path')

// `./content/subfolder/test.txt` // Esto esta mal, porque no es compatible con todos los sistemas operativos.

/*
- Barra separadoras de carpetas según el sistema operativo (OS)
  *  unix -> /
  *  windows -> \
*/

console.log(path.sep)

// Unir rutas con path.join
const filePath = path.join('content', 'subfolder', 'test.txt')
console.log(filePath)

const base = path.basename('/tmp/ypnq-secret/password.txt')
console.log(base)

const filename = path.basename('/tmp/ypnq-secret/password.txt', '.txt')
console.log(filename)

// Se utilza mas para saber la extensión de los archivos
const extension = path.extname('image.png')
console.log(extension)
