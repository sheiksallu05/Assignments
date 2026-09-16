import { useState } from "react";

function MultipleEvents() {
    const [message, setMessage] = useState("");

    function handleClick() {
        setMessage("Button clicked!");
    }

    function handleMouseOver() {
        setMessage("Mouse is over the button!");
    }

    function handleMouseOut() {
        setMessage("Mouse left the button!");
    }

    return (
        <div>
            <h2>4. Multiple Events</h2>

            <button
                onClick={handleClick}
                onMouseOver={handleMouseOver}
                onMouseOut={handleMouseOut}
            >
                Move / Click Me
            </button>

            <p>{message}</p>
            <hr /><hr />
        </div>
    );
}

export default MultipleEvents;