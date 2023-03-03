import { useState } from 'react'
import { Todos } from './components/Todos'

const mockTodos = [
  {
    id: '1',
    title: 'Ver youtube videos',
    completed: false
  },
  {
    id: '2',
    title: 'Escuchar musica',
    completed: false
  },
  {
    id: '3',
    title: 'Estudiar typescript con react',
    completed: true
  }
]

const App = (): JSX.Element => {
  const [todos] = useState(mockTodos)

  return (
    <div className='todoapp'>
      <Todos todos={todos} />
    </div>
  )
}

export default App
