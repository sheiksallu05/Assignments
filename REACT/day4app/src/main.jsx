import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import Card from './Card.jsx'
import StudentResult from './StudentResult.jsx'
import ProductAvailability from './ProductAvailability.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
    {/* <Card/>
    <StudentResult/>
    <ProductAvailability/> */}
  </StrictMode>,
)
