import { useState } from "react";

function BlurEvent() {
    const [input, setInput] = useState("");
    const [result, setResult] = useState("");

    function handleBlur() {
        setResult(input);
    }

    return (
        <div>
            <h2>5. Blur Event</h2>

            <input
                type="text"
                value={input}
                onChange={(e) => setInput(e.target.value)}
                onBlur={handleBlur}
                placeholder="Enter something"
            />

            <p>You entered: {result}</p>

            <hr /><hr />
        </div>
    );
}

export default BlurEvent;