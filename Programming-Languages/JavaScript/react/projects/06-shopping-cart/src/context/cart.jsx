import { createContext, useReducer } from 'react'
import { cartReducer, cartInitialState } from '../reducers/cart'

// FORMA 1
export const CartContext = createContext()

// FORMA 2
/* // 1. Crear el Contexto
export const CartContext = createContext()

// 2. Crear el Provider
export function CartProvider ({ children }) {
  const [cart, setCart] = useState([])

  const addToCart = product => {
    // Comprobar si el producto ya está en el carrito
    const productInCartIndex = cart.findIndex(item => item.id === product.id)

    if (productInCartIndex >= 0) {
      // Forma 1, sería usando structureClone
      // structureClone -> Hace copia profunda de los objetos
      const newCart = structuredClone(cart)
      newCart[productInCartIndex].quantity += 1
      return setCart(newCart)
    }

    // Si el producto no está en el carrito
    setCart(prevState => ([
      ...prevState,
      {
        ...product,
        quantity: 1
      }
    ]))
  }
  const removeFromCart = product => {
    // setCart(cart.filter(item => item.id !== product.id))
    setCart(prevState => prevState.filter(item => item.id !== product.id))
  }

  const clearCart = () => {
    setCart([])
  }
*/

function useCartReducer () {
  const [state, dispatch] = useReducer(cartReducer, cartInitialState)

  const addToCart = product => dispatch({
    type: 'ADD_TO_CART',
    payload: product
  })

  const removeFromCart = product => dispatch({
    type: 'REMOVE_FROM_CART',
    payload: product
  })

  const clearCart = () => dispatch({
    type: 'CLEAR_CART'
  })

  return { state, addToCart, removeFromCart, clearCart }
}

// La dependecia de usar React Context es MÍNIMA
export function CartProvider ({ children }) {
  const { state, addToCart, removeFromCart, clearCart } = useCartReducer()

  return (
    <CartContext.Provider value={{
      cart: state,
      addToCart,
      removeFromCart,
      clearCart
    }}
    >
      {children}
    </CartContext.Provider>
  )
}
