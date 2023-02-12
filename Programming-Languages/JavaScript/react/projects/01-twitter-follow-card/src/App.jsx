import './App.css'
import { Users } from './components/Users'

export function App () {
  return (
    <section className='App'>
      <h2>A quién seguir</h2>
      <Users />
      <span className='show-more'>Mostrar más</span>
    </section>
  )
}
