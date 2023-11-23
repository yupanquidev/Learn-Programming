import { Link } from '../Link'

const i18n = {
  es: {
    title: 'Sobre mí',
    button: 'Ir a la página de Home',
    description: '¡Hola! Me llamo Humberto y estoy creando un clon de React Router.'
  },
  en: {
    title: 'About me',
    button: 'Go to Home page',
    description: 'Hi! My name is Humberto and I am creating a clone of React Router.'
  }
}

const useI18n = (lang) => {
  return i18n[lang] || i18n.en
}

export default function AboutPage ({ routeParams }) {
  const i18n = useI18n(routeParams.lang ?? 'es')
  return (
    <>
      <h1>{i18n.title}</h1>
      <div>
        <img src='https://github.com/ypnqh.png' alt='Perfil de Humberto' />
        <p>{i18n.description}</p>
      </div>
      <Link to='/'>{i18n.button}</Link>
    </>
  )
}
