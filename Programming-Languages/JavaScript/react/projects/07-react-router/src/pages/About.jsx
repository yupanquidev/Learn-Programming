import { Link } from '../Link'

export default function AboutPage () {
  return (
    <>
      <h1>About Page</h1>
      <div>
        <img src='https://github.com/ypnqh.png' alt='Perfil de Humberto' />
        <p>¡Hola! Me llamo Humberto y estoy creando un clon de React Router.</p>
      </div>
      <Link to='/'>Ir a la página de Home</Link>
    </>
  )
}
