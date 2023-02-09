import './App.css'
import { useRef } from 'react'
import { Movies } from './components/Movies.jsx'
import { useMovies } from './hooks/useMovies.js'

function App() {
  const { movies } = useMovies()
  const inputRef = useRef()

  const handleSubmit = (event) => {
    event.preventDefault()
    const inputEl = inputRef.current
    const value = inputEl.value
    console.log(value)
  }



  return (
    <div className='page'>
      <header>
        <h1>Movie Search</h1>
        <form className='form' onSubmit={handleSubmit}>
          <input ref={inputRef} placeholder='Avengers, Star Wars, The Matrix..' />
          <button type='submit'>Search</button>
        </form>
      </header>
      <main>
        <Movies movies={movies} />
      </main>
    </div>
  )
}

export default App

