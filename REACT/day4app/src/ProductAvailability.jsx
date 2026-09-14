function ProductAvailability() {

    const isAvailable = true;

    return (
        <div>
            <h2>Product</h2>

            <p>Mobile Phone</p>

            {isAvailable && <p>Available Now</p>}
        </div>
    );
}

export default ProductAvailability;