import { useState } from "react";

function ClickDoubleClick() {
    const [message, setMessage] = useState("");

    function handleClick() {
        setMessage("Button Clicked!");
    }

    function handleDoubleClick() {
        setMessage("Button Double Clicked!");
    }

    return (
        <div>
            <h2>2. Click / Double Click</h2>

            <button onClick={handleClick}>
                Click Me
            </button>

            <button onDoubleClick={handleDoubleClick}>
                Double Click Me
            </button>

            <p>{message}</p>
            <hr /><hr />
        </div>
    );
}

export default ClickDoubleClick;