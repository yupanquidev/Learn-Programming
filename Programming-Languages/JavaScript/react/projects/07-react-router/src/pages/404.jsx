import { Link } from '../Link'

export default function Page404 () {
  return (
    <>
      <div>
        <h1>This is Not fine</h1>
        <img src='https://media.giphy.com/media/3o7TKsQ8U1iZaMe9XO/giphy.gif' alt='Git de 404' />
      </div>
      <Link to='/'>Volver a la home</Link>
    </>
  )
}
