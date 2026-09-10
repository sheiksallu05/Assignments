function Product(props) {

    return (
        <div>
            <h2>Product Details</h2>

            <p>Product Name: {props.name}</p>
            <p>Price: ₹{props.price}</p>
            <p>Category: {props.category}</p>
            <p>Brand: {props.brand}</p>
        </div>
    );
}

export default Product;