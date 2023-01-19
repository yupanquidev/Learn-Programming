import { useState } from 'react'
import reactLogo from './assets/react.svg'
import './App.css'

// Turnos
const TURNS = {
  X: "x", 
  O: "o"
}

const Square = ({children, isSelected, updateBoard, index}) => {
  const className = `square ${isSelected ? 'is-selected': ''}`

  const handleClick = () => {
    updateBoard(index)
  }

  return (
    <div onClick={handleClick} className={className}>
      {children}
    </div>
  )
}

const WINNER_COMBOS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

function App() {
  const [board, setBoard] = useState(Array(9).fill(null))
  const [turn, setTurn] = useState(TURNS.X)
  
  // null es cuando no hay ganadpr, false es cuando hay empate
  const [winner, setWinner] = useState(null) 
  const checkWinner = (boardToCheck) => {
    // Revisamos todas las combinaciones ganadoras, para ver si X u O ganó
    for (const combo of WINNER_COMBOS) {
      const [a, b, c] = combo
      if (
        boardToCheck[a] && 
        boardToCheck[a] === boardToCheck[b] && 
        boardToCheck[a] === boardToCheck[c]
      ) {
        return boardToCheck[a]
      }
    }
    // Si no hay ganador
    return null
  }

  const updateBoard = (index) => {
    // No actualizamos esta posición si ya tiene algo
    if (board[index] || winner) return

    // Actualizar el tablero
    const newBoard = [...board]
    newBoard[index] = turn
    setBoard(newBoard)

    // Cambiar el turno
    const newTurn = turn === TURNS.X ? TURNS.O : TURNS.X
    setTurn(newTurn)

    // Revisar si hay un ganador
    const newWinner = checkWinner(newBoard)
    if (newWinner){
      setWinner(newWinner)
    }
  }

  return (
    <main className='board'>
      <h1>Michi</h1>
      <section className='game'>
        {
          board.map((_, index) => {
            return (
              <Square 
                key={index}
                index={index}
                updateBoard={updateBoard}
              >
              </Square>
            )
          })
        }
      </section>
      <section className='turn'>
        <Square isSelected={turn === TURNS.X}> 
          {TURNS.X} 
        </Square>
        <Square isSelected={turn === TURNS.O}> 
          {TURNS.O} 
        </Square>
      </section>
    </main>
  )
}

export default App
