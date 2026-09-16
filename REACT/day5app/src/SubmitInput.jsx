import { useState } from "react";

function SubmitInput() {
    const [input, setInput] = useState("");
    const [result, setResult] = useState("");

    function handleSubmit(e) {
        e.preventDefault();
        setResult(input);
    }

    return (
        <div>
            <h2>1. Submit Event</h2>

            <form onSubmit={handleSubmit}>
                <input
                    type="text"
                    value={input}
                    onChange={(e) => setInput(e.target.value)}
                    placeholder="Enter your name"
                />

                <button type="submit">Submit</button>
            </form>

            <p>Input: {result}</p>
            <hr /><hr />
        </div>
    );
}

export default SubmitInput;