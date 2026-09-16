import { useState } from "react";

function App() {

    // 1. Multiple State Variables
    const [empid, setEmpid] = useState(101);
    const [empname, setEmpname] = useState("Salman");
    const [salary, setSalary] = useState(25000);
    const [desg, setDesg] = useState("Web Developer");
    const [deptno, setDeptno] = useState(10);

    // 2. State Object
    const [product, setProduct] = useState({
        name: "Laptop",
        price: 45000,
        category: "Electronics"
    });

    function changeProduct() {
        setProduct({
            name: "Mobile Phone",
            price: 20000,
            category: "Mobile"
        });
    }

    // 3. Array State - Add & Delete Customer
    const [customers, setCustomers] = useState([
        "Salman",
        "Rahul",
        "John"
    ]);

    function addCustomer() {
        setCustomers([...customers, "Kumar"]);
    }

    function deleteCustomer(name) {
        setCustomers(customers.filter((customer) => customer !== name));
    }

    return (
        <div>

            <h1>React useState Hook</h1>

            <hr />

            {/* 1. Multiple State Variables */}
            <h2>1. Employee Details</h2>

            <p>Employee ID: {empid}</p>
            <p>Employee Name: {empname}</p>
            <p>Salary: ₹{salary}</p>
            <p>Designation: {desg}</p>
            <p>Department No: {deptno}</p>

            <hr />

            {/* 2. State Object */}
            <h2>2. Product Information</h2>

            <p>Product Name: {product.name}</p>
            <p>Price: ₹{product.price}</p>
            <p>Category: {product.category}</p>

            <button onClick={changeProduct}>
                Change Product
            </button>

            <hr />

            {/* 3. Array State */}
            <h2>3. Customer List</h2>

            <button onClick={addCustomer}>
                Add Customer
            </button>

            {customers.map((customer, index) => (
                <div key={index}>
                    <p>
                        {customer}
                        <button onClick={() => deleteCustomer(customer)}>
                            Delete
                        </button>
                    </p>
                </div>
            ))}

        </div>
    );
}

export default App;