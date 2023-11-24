import { match } from 'path-to-regexp'
import { Children, useEffect, useState } from 'react'
import { EVENTS } from './consts'
import { getCurrentPath } from './utils'

export function Router ({ children, routes = [], defaultComponent: DefaultComponent = () => <h1>404</h1> }) {
  const [currentPath, setCurrentPath] = useState(getCurrentPath())

  useEffect(() => {
    const onLocationChange = () => {
      setCurrentPath(getCurrentPath())
    }

    window.addEventListener(EVENTS.PUSHSTATE, onLocationChange)
    window.addEventListener(EVENTS.POPSTATE, onLocationChange)

    return () => {
      window.removeEventListener(EVENTS.PUSHSTATE, onLocationChange)
      window.removeEventListener(EVENTS.POPSTATE, onLocationChange)
    }
  }, [])

  let routeParams = {}

  // Añadir Routes para componente children <Route />
  const routesFromChildren = Children.map(children, ({ props, type }) => {
    const { name } = type
    const isRoute = name === 'Route'
    return isRoute ? props : null
  /*     if (!isRoute) return null
    return props */
  })

  const routesToUse = routes.concat(routesFromChildren).filter(Boolean)

  const Page = routesToUse.find(({ path }) => {
    if (path === currentPath) return true

    // Hemos usado path-to-regexp para poder detectar rutas dinámicas como por el ejemplo: /search/:query <- :query es una ruta dinámica
    const matcherUrl = match(path, { decode: decodeURIComponent })
    const matched = matcherUrl(currentPath)
    if (!matched) return false

    // Guardamos los parámetros de la url que eran dinámicos y que hemos extraído con path-to-regexp por ejemplo: si la ruta es /search/:query y la url es /search/react, entonces matched.params = { query: 'react' }
    routeParams = matched.params // { query: 'react' } => la ruta ->  /search/react
    return true
  })?.Component

  return Page
    ? <Page routeParams={routeParams} />
    : <DefaultComponent routeParams={routeParams} />
}
