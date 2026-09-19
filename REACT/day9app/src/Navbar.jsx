function Navbar() {
    return (
        <nav className="bg-gray-900 text-white px-6 py-4">

            <div className="max-w-7xl mx-auto flex items-center justify-between">

                <h1 className="text-2xl font-bold">
                    MyWebsite
                </h1>

                <div className="hidden md:flex items-center gap-6">

                    <a href="#">Home</a>
                    <a href="#">About</a>
                    <a href="#">Services</a>
                    <a href="#">Contact</a>

                    <button className="bg-blue-600 px-4 py-2 rounded-lg">
                        Login
                    </button>

                </div>

            </div>

        </nav>
    );
}

export default Navbar;