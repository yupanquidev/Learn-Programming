import { Products } from './components/Products'
import { Header } from './components/Header'
import { products as initialProducts } from './mocks/products.json'
import { useFilters } from './hooks/useFilters'
import { Footer } from './components/Footer'
import { IS_DEVELOPMENT } from './config'
import { Cart } from './components/Cart'
import { CartProvider } from './context/cart'

function App () {
  const { filterProducts } = useFilters()
  const filteredProducts = filterProducts(initialProducts)

  return (
    <CartProvider>
      <Header />
      <Cart />
      <Products products={filteredProducts} />
      {IS_DEVELOPMENT && <Footer />}
    </CartProvider>
  )
}

export default App
