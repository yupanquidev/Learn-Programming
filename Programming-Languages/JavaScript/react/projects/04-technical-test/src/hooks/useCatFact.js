import { useState, useEffect } from 'react'
import { getRandomFact } from '../services/facts.js'

export function useCatFact () {
  const [fact, setFact] = useState()
  const refreshRandomFact = () => {
    getRandomFact().then(newFact => setFact(newFact))
  }
  // Facts de datos.
  // No puedes usar React Query, SWR, Apollo, etc.
  // No olividarse de los '[]'
  // Efecto para recuperar la cita al cargar la página.
  useEffect(refreshRandomFact, [])

  return { fact, refreshRandomFact }
}
