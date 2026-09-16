function PassingValue() {

    function showValue(value) {
        alert("You selected: " + value);
    }

    return (
        <div>
            <h2>3. Passing a Value to an Event</h2>

            <button onClick={() => showValue("React")}>
                React
            </button>

            <button onClick={() => showValue("JavaScript")}>
                JavaScript
            </button>
            <hr /><hr />
        </div>
    );
}

export default PassingValue;