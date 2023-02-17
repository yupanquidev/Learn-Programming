import { Products } from './components/Products'
import { Header } from './components/Header'
import { products as initialProducts } from './mocks/products.json'
import { useFilters } from './hooks/useFilters'
import { Footer } from './components/Footer'
import { IS_DEVELOPMENT } from './config'
import { Cart } from './components/Cart'

function App () {
  const { filterProducts } = useFilters()
  const filteredProducts = filterProducts(initialProducts)

  return (
    <>
      <Header />
      <Cart />
      <Products products={filteredProducts} />
      {
        IS_DEVELOPMENT && <Footer />
      }
    </>
  )
}

export default App

=> <= != *** é e f l 6 /\ \/ === /> </ 0 | ° <| ¿? ¡ |>