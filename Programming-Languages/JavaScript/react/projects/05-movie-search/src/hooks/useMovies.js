import { searchMovies } from '../services/movies'
import { useState } from 'react'
import { useRef } from 'react'

export function useMovies ({search}) {
  const [movies, setMovies] = useState([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState(null)
  const previousSearch = useRef(search)

  const getMovies = async () => {
    if (search === previousSearch.current) return

    try {
      setLoading(true)
      setError(null)
      previousSearch.current = search
      const newMovies = await searchMovies({ search })
      setMovies(newMovies)  
    } catch (error) {
      setError(error.message)
    } finally {
      // Se ejecuta tanto en el try como en el catch.
      setLoading(false)
    }
  }

  return { movies, getMovies, loading}
}