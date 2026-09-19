function ProductCard(props) {
    return (
        <div className="bg-gray-900 rounded-xl shadow-md overflow-hidden">

            <img
                src={props.image}
                alt={props.name}
                className="w-full h-48 object-cover"
            />

            <div className="p-5">

                <h2 className="text-xl font-bold">
                    {props.name}
                </h2>

                <p className="text-green-600 font-bold text-lg mt-2">
                    {props.price}
                </p>

                <p className="mt-2">
                    {props.rating}
                </p>

                <button className="w-full mt-4 bg-blue-600 text-white py-2 rounded-lg">
                    Add to Cart
                </button>

            </div>

        </div>
    );
}

export default ProductCard;