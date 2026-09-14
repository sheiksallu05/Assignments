import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import Card from "./Card";
import StudentResult from "./StudentResult";
import ProductAvailability from "./ProductAvailability";

function App() {

    return (
        <div>

            <h1>React Props & Children</h1>

            <hr />

            {/* Card Components */}

            <Card title="Product" footer="₹999">
                <p>This is a great product.</p>
            </Card>

            <Card title="About" footer="Learn More">
                <p>We are a web development company.</p>
            </Card>

            <Card title="Contact" footer="Contact Us">
                <p>Email: example@gmail.com</p>
            </Card>

            <hr />

            {/* Student Result */}

            <StudentResult />

            <hr />

            {/* Product Availability */}

            <ProductAvailability />

        </div>
    );
}

export default App;
