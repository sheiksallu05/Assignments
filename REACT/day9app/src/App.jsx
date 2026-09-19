import Navbar from "./Navbar";
import ProfileCard from "./ProfileCard";
import ProductPage from "./ProductPage";

function App() {
    return (
        <div className="bg-gray-500 min-h-screen">

            <Navbar />

            <ProfileCard />

            <ProductPage />

        </div>
    );
}

export default App;