import ProductCard from "./ProductCard";

function ProductPage() {

    return (
        <div className="max-w-7xl mx-auto px-6 py-10">

            <h1 className="text-3xl font-bold text-center mb-8 text-white-700">
                Our Products
            </h1>

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">

                <ProductCard 
                    name="Laptop"
                    price="₹45,000"
                    rating="4.5"
                    image="https://picsum.photos/300/200?random=1"
                />

                <ProductCard
                    name="Smartphone"
                    price="₹25,000"
                    rating="4.3"
                    image="https://picsum.photos/300/200?random=2"
                />

                <ProductCard
                    name="Headphones"
                    price="₹2,999"
                    rating="4.6"
                    image="https://picsum.photos/300/200?random=3"
                />

                <ProductCard
                    name="Smart Watch"
                    price="₹4,999"
                    rating="4.2"
                    image="https://picsum.photos/300/200?random=4"
                />

                <ProductCard
                    name="Keyboard"
                    price="₹1,499"
                    rating="4.4"
                    image="https://picsum.photos/300/200?random=5"
                />

                <ProductCard
                    name="Mouse"
                    price="₹799"
                    rating="4.1"
                    image="https://picsum.photos/300/200?random=6"
                />

            </div>

        </div>
    );
}

export default ProductPage;