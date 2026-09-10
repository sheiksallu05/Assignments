import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import ProfileCard from './Components/ProfileCard.jsx'
import Button from './Components/Button.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* <App /> */}

     <div>

            <h1>React Components & Props</h1>

            <hr />

            {/* Profile Cards */}

            <ProfileCard
                name="Salman"
                age={21}
                role="Full-stack Developer"
            >
                <p>Likes React and JavaScript.</p>
            </ProfileCard>


            <ProfileCard
                name="Rahul"
                age={24}
                role="Frontend Developer"
            >
                <p>Likes HTML and CSS.</p>
            </ProfileCard>


            <ProfileCard
                name="John"
                age={25}
                role="Backend Developer"
            >
                <p>Likes Node.js and MySQL.</p>
            </ProfileCard>


            <hr />

            {/* Buttons */}

            <h2>Buttons</h2>

            <Button color="blue" size="small">
                Submit
            </Button>

            <Button color="green" size="medium">
                Login
            </Button>

            <Button color="red" size="large">
                Delete
            </Button>

        </div>


  </StrictMode>,
)
