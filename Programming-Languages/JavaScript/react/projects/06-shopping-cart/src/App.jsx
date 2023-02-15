import { Products } from './components/Products'
import { Header } from './components/Header'
import { products as initialProducts } from './mocks/products.json'
import { useFilters } from './hooks/filters'
import { useState } from 'react'
import { Footer } from './components/Footer'
import { IS_DEVELOPMENT } from './config'

function App () {
  const [products] = useState(initialProducts)
  const { filters, filterProducts, setFilters } = useFilters()
  const filteredProducts = filterProducts(products)

  return (
    <>
      <Header changeFilters={setFilters} />
      <Products products={filteredProducts} />
      {
        IS_DEVELOPMENT && <Footer filters={filters} />
      }
    </>
  )
}

export default App
