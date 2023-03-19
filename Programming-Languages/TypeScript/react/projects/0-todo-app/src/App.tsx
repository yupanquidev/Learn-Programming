import { useState } from 'react'
import { Todos } from './components/Todos'
import { type TodoId, type Todo as TodoType } from './types'

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
  const [todos, setTodos] = useState(mockTodos)

  const handleRemove = ({ id }: TodoId): void => {
    const newTodos = todos.filter(todo => todo.id !== id)
    setTodos(newTodos)
  }

  const handleCompleted = (
    { id, completed }: Pick<TodoType, 'id' | 'completed'>
  ): void => {
    const newTodos = todos.map(todo => {
      if (todo.id === id) {
        return {
          ...todo,
          completed
        }
      }
      return todo
    })
    setTodos(newTodos)
  }

  return (
    <div className='todoapp'>
      <Todos
        onToggleCompleteTdod={handleCompleted}
        onRemoveTodo={handleRemove}
        todos={todos}
      />
    </div>
  )
}

export default App
