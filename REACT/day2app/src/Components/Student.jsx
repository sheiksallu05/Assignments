function Student(props) {

    return (
        <div>
            <h2>Student Details</h2>

            <p>Name: {props.name}</p>
            <p>Age: {props.age}</p>
            <p>Course: {props.course}</p>
            <p>College: {props.college}</p>
        </div>
    );
}

export default Student;