import { BrowserRouter, Routes, Route } from "react-router-dom";

import Navbar from "./Navbar";
import Home from "./Home";
import Products from "./Products";
import Reports from "./Reports";
import About from "./About";
import Contact from "./Contact";

function App() {

    return (
        <BrowserRouter>

            <Navbar />

            <hr />

            <Routes>

                <Route path="/" element={<Home />} />

                <Route path="/products" element={<Products />} />

                <Route path="/reports" element={<Reports />} />

                <Route path="/about" element={<About />} />

                <Route path="/contact" element={<Contact />} />

            </Routes>

        </BrowserRouter>
    );
}

export default App;