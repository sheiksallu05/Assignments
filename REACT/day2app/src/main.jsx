import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import Student from './Components/Student.jsx'
import Product from './Components/Product.jsx'
import Child from './Components/Child.jsx'
import Parent from './Components/Parent.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* <App /> */}
     <div>

            <h1>React Components & Props</h1>

            <hr />

            {/* Student Component */}

            <Student
                name="Salman"
                age={21}
                course="BCA"
                college="Thiruvalluvar University"
            />

            <hr />

            {/* Product Component */}

            <Product
                name="Laptop"
                price={45000}
                category="Electronics"
                brand="Acer"
            />

            <hr />

            {/* Nested Component */}

            <Parent />

        </div>
  </StrictMode>,
)
