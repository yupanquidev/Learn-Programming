import './App.css'
import { Movies } from './components/Movies.jsx'
import { useMovies } from './hooks/useMovies.js'
import { useState, useEffect, useRef } from 'react'

function UseSearch () {
  const [search, updateSearch] = useState('')
  const [error, setError] = useState(null)
  const isFirstInput = useRef(true)

  useEffect(() => {
    // Primera ves de algo.
    if (isFirstInput.current) {
      isFirstInput.current = search === ''
      return
    }

    if (search === '') {
      setError('No se puede realizar una busqueda vacia')
      return
    }

    if (search.match(/^\d+$/)) {
      setError('No se puede realizar una busqueda con caracteres especiales')
      return
    }

    if (search.length < 3) {
      setError('La busqueda debe tener al menos 3 caracteres')
      return
    }
    setError(null)
  }, [search])

  return { search, updateSearch, error }
}

function App() {
  const { search, updateSearch, error } = UseSearch()
  const { movies,loading, getMovies } = useMovies({ search })

  const handleSubmit = (event) => {
    event.preventDefault()
    getMovies()
  } 

  const handleChange = (event) => {
    updateSearch(event.target.value)
  }

  return (
    <div className='page'>
      <header>
        <h1>Movie Search</h1>
        <form className='form' onSubmit={handleSubmit}>
          <input
            style={{
              border: '1px solid transparent',
              borderColor: error ? 'red' : 'transparent'
            }}
            onChange={handleChange} value={search} placeholder='Avengers, Star Wars, The Matrix..' />
          <button type='submit'>Search</button>
        </form>
        {error && <p style={{color: 'red'}} className='error'>{error}</p>}
      </header>
      <main>
        {
          loading ? <p>Loading...</p> : <Movies movies={movies} />
        }
      </main>
    </div>
  )
}

export default App

