import { useEffect, useState } from 'react'

import './App.css'

const FollowMouse = () => {
  const [enabled, setEnabled] = useState(false)
  const [position, setPosition] = useState({ x: 0, y: 0 })

  // pointer move
  useEffect(() => {
    console.log('effect', { enabled })
    const handleMove = (event) => {
      const { clientX, clientY } = event
      console.log('handleMove', { clientX, clientY })
      setPosition({ x: clientX, y: clientY })
    }
    if (enabled) {
      window.addEventListener('pointermove', handleMove)
    }

    // cleanup => Limpiar efectos:
    // Se ejecuta cuando el componete se desmonata
    // Se ejecuta cuando cambian las dependecias, antes de ejecutar el efecto de nuevo
    return () => {
      console.log('cleaup')
      window.removeEventListener('pointermove', handleMove)
    }
  }, [enabled])

  // [] -> Solo se ejecuta una vez cuando se monta el componente.
  // [enabled] -> Se ejectura cuando cambia enabled y cuando se monta el componente.
  // undefined -> Se ejecuta cada vez que renderiza el componente.

  // Change body className
  useEffect(() => {
    document.body.classList.toggle('no-cursor', enabled)
    return () => {
      document.body.classList.remove('no-cursor')
    }
  }, [enabled])

  return (
    <main>
      <div
        className='circle'
        style={{
          transform: `translate(${position.x}px, ${position.y}px)`
        }}
      />
      <button onClick={() => setEnabled(!enabled)}>
        {enabled ? 'Desactivar' : 'Activar'} seguir puntero
      </button>
    </main>
  )
}

function App () {
  return (
    <main>
      <FollowMouse />
    </main>
  )
}

export default App

// Nota: getEvenListeners(window) => ver los eventos
