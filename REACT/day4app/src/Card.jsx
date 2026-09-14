function Card(props) {
    return (
        <div className="card">
            <h2>{props.title}</h2>

            <div className="content">
                {props.children}
            </div>

            <div className="footer">
                {props.footer}
            </div>
        </div>
    );
}

export default Card;