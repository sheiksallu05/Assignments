import { useEffect, useState } from "react";

function App() {

    // Task 2
    const [count, setCount] = useState(0);

    // Task 3
    const [timer, setTimer] = useState(0);

    // Task 4
    const [users, setUsers] = useState([]);

    // Task 5
    const [input, setInput] = useState("");


    // 1. Greeting message - runs only once
    useEffect(() => {
        console.log("Welcome! Component Loaded");
    }, []);


    // 2. Change browser tab title whenever count changes
    useEffect(() => {
        document.title = `Count: ${count}`;
    }, [count]);


    // 3. Timer increases every 5 seconds
    useEffect(() => {

        const interval = setInterval(() => {
            setTimer((previousTimer) => previousTimer + 1);
        }, 5000);

        return () => clearInterval(interval);

    }, []);


    // 4. Fetch users when component loads
    useEffect(() => {

        fetch("https://jsonplaceholder.typicode.com/users")
            .then((response) => response.json())
            .then((data) => setUsers(data));

    }, []);


    // 5. useEffect runs whenever input changes
    useEffect(() => {
        console.log("Input changed:", input);
    }, [input]);


    return (
        <div>

            <h1>useEffect Hook</h1>

            <hr />

            {/* Task 1 */}
            <h2>1. Greeting</h2>
            <p>Check the browser console.</p>

            <hr />

            {/* Task 2 */}
            <h2>2. Count: {count}</h2>

            <button onClick={() => setCount(count + 1)}>
                Increase Count
            </button>

            <p>Browser tab title changes when count changes.</p>

            <hr />

            {/* Task 3 */}
            <h2>3. Timer</h2>
            <p>Timer: {timer}</p>
            <p>Timer increases every 5 seconds.</p>

            <hr />

            {/* Task 4 */}
            <h2>4. Users</h2>

            {users.map((user) => (
                <p key={user.id}>{user.name}</p>
            ))}

            <hr />

            {/* Task 5 */}
            <h2>5. Input</h2>

            <input
                type="text"
                placeholder="Type something"
                value={input}
                onChange={(e) => setInput(e.target.value)}
            />

            <p>You typed: {input}</p>

        </div>
    );
}

export default App;