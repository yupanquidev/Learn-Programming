import { createContext, useState } from 'react'

// SINGLETON -> Módulo de JavaScript

// 1. Crear el Contexto
// También este el que tenemos que consumir
export const FiltersContext = createContext()

// 2. Crear el Provider, para proveer el contexto
// También este es el que nos provee el acceso al contexto
export function FiltersProvider ({ children }) {
  const [filters, setFilters] = useState({
    category: 'all',
    minPrice: 0
  })

  return (
    <FiltersContext.Provider value={{
      filters,
      setFilters
    }}
    >
      {children}
    </FiltersContext.Provider>
  )
}
