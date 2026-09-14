import { useState } from "react";

function StudentResult() {

    const [marks, setMarks] = useState(90);

    return (
        <div>
            <h2>Student Result</h2>

            <p>Marks: {marks}</p>

            {marks >= 90 && marks <= 100 && <p>Excellent</p>}

            {marks >= 60 && marks < 90 && <p>Passed</p>}

            {marks >= 40 && marks < 60 && <p>Needs Improvement</p>}

            {marks < 40 && <p>Failed</p>}
        </div>
    );
}

export default StudentResult;