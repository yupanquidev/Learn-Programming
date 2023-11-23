import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')).render(
  // El StrictMode -> NO FUNCIONA EN PRODUCCIÓN, pero en desarrollo si funciona.
  <React.StrictMode>
    <App />
  </React.StrictMode>
)
