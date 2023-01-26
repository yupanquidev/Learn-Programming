import './App.css'
import { useCatImg } from "./hooks/useCatImg"
import { useCatFact } from './hooks/useCatFact'
import { Otro } from './components/Otro'


export function App () {
  const { fact , refreshRandomFact } = useCatFact()
  const { imgUrl } = useCatImg({ fact })

  const handleClick = async () => {
    refreshRandomFact()
  }

  return (
    <main>
      <h1>App de gatitos</h1>
      <button onClick={handleClick}>Get new fact</button>
      {<p>{fact}</p>}
      {imgUrl && <img src={imgUrl} alt={`image extracted using the first rhee words for ${fact}`}/>}
      <Otro/>
    </main>
  )
}