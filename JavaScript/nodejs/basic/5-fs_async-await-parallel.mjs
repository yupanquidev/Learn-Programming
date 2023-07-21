// Paralelo -> Opción 3

import { readFile } from 'node:fs/promises'

// Lo bueno es que mas rápido
//
Promise.all([
  readFile('./archivo.txt', 'utf-8'),
  readFile('./archivo2.txt', 'utf-8')
]).then(([text, text2]) => {
  console.log('primer texto:', text)
  console.log('segundo texto:', text2)
})
