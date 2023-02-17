import { useContext } from 'react'
import { CartContext } from '../context/cart'

export const useCart = () => {
  const context = useContext(CartContext)

  // Revisar si el contexto es undefined
  if (context === undefined) {
    throw new Error('useCart no debe usarse dentro de un CartProvider')
  }

  return context
}
