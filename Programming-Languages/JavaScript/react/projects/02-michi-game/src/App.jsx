import { useState } from 'react'
import confetti from "canvas-confetti"

import { Square } from './components/Square.jsx'
import { TURNS } from './constants.js'
import { checkWinnerFrom, checkEndGame } from './logic/board.js'
import { WinnerModal } from './components/WinnerModal.jsx'
import { saveGameToStorage, resetGameStorage } from './logic/storage/index.js'

function App() {
  const [board, setBoard] = useState( () => { 
    const boardFromStorage = window.localStorage.getItem('board')
    return boardFromStorage ? JSON.parse(boardFromStorage) :Array(9).fill(null)
  })

  const [turn, setTurn] = useState( () => {
    const turnFromStorage = window.localStorage.getItem('turn')
    return turnFromStorage ?? TURNS.X
  })
  
  // null es cuando no hay ganadpr, false es cuando hay empate
  const [winner, setWinner] = useState(null) 
 
  const resetGame = () => {
    setBoard(Array(9).fill(null))
    setTurn(TURNS.X)
    setWinner(null)

    resetGameStorage()
  }

  const updateBoard = (index) => {
    // No actualizamos esta posición, si ya tiene algo
    if (board[index] || winner) return

    // Actualizar el tablero
    const newBoard = [...board]
    newBoard[index] = turn
    setBoard(newBoard)

    // Cambiar el turno
    const newTurn = turn === TURNS.X ? TURNS.O : TURNS.X
    setTurn(newTurn) 

    // Guardar la partida
    saveGameToStorage({
      board: newBoard,
      turn: newTurn
    })

    // Revisar si hay un ganador
    const newWinner = checkWinnerFrom(newBoard)
    if (newWinner){
      confetti()
      setWinner(newWinner)
    } else if (checkEndGame(newBoard)) {
      setWinner(false) // Significa que hay un Empate
    }
  }

  return (
    <main className='board'>
      <h1>Michi</h1>
      <button onClick={resetGame}>Reset del Juego</button>
      <section className='game'>
        {
        // Tarea combir a un componente
        }
        {
          board.map((square, index) => {
            return (
              <Square 
                key={index}
                index={index}
                updateBoard={updateBoard}
              >
                {square}
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
      <WinnerModal resetGame={resetGame} winner={winner}/>
    </main>
  )
}

export default App
