// asycn/await -> Opción 2

const { readFile } = require('node:fs/promises')

// Option 1
async function init () {
  console.log('Leyendo el primer archivo...')
  const text = await readFile('./archivo.txt', 'utf-8')
  console.log('primer texto:', text)

  console.log('--> Hacer cosas mientras lee el archivo...')

  console.log('Leyendo el segundo archivo...')
  const secodText = await readFile('./archivo2.txt', 'utf-8')
  console.log('segundo texto:', secodText)
}

init();

// Option 2
// IIFE -> Immediately Invoked Function Expression
(
  async () => {
    console.log('Leyendo el primer archivo...')
    const text = await readFile('./archivo.txt', 'utf-8')
    console.log('primer texto:', text)

    console.log('--> Hacer cosas mientras lee el archivo...')

    console.log('Leyendo el segundo archivo...')
    const secodText = await readFile('./archivo2.txt', 'utf-8')
    console.log('segundo texto:', secodText)
  }
)()
