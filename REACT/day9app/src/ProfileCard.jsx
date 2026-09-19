import ProfileImage from './assets/salman.jpeg'
function ProfileCard() {
    return (
        <div className="max-w-sm mx-auto mt-8 bg-white rounded-xl shadow-lg p-6 text-center">

            <img
                src={ProfileImage}
                alt="Profile"
                className="w-28 h-28 rounded-full mx-auto"
            />

            <h3 className="text-2xl font-bold mt-3">
                Salman S
            </h3>

            <h3 className="text-blue-600 font-semibold">
                Fullstack Developer
            </h3>

            <p className="text-gray-600 mt-2">
                Passionate about creating modern and responsive websites.
            </p>

            <button className="mt-4 bg-blue-600 text-white px-6 py-2 rounded-lg">
                Follow
            </button>

        </div>
    );
}

export default ProfileCard;