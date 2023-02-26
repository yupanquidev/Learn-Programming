import { lazy, Suspense } from 'react'

import './App.css'
import Page404 from './pages/404'
/// import HomePage from './pages/Home' // import estático
import SearchPage from './pages/Search'

import { Route } from './Route'
import { Router } from './Router'

const LazyHomePage = lazy(() => import('./pages/Home')) // import dinámico
const LazyAboutPage = lazy(() => import('./pages/About')) // import dinámico

const appRoutes = [
  {
    path: '/:lang/about',
    Component: LazyAboutPage
  },
  {
    path: '/search/:query',
    Component: SearchPage
  }
]

function App () {
  return (
    <main>
      <Suspense fallback={null}>
        <Router routes={appRoutes} defaultComponent={Page404}>
          <Route path='/' Component={LazyHomePage} />
          <Route path='/about' Component={LazyAboutPage} />
        </Router>
      </Suspense>
    </main>
  )
}

export default App
