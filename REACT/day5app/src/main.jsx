import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import SubmitInput from './SubmitInput.jsx'
import ClickDoubleClick from './ClickDoubleClick.jsx'
import PassingValue from './PassingValue.jsx'
import MultipleEvents from './MultipleEvents.jsx'
import BlurEvent from './BlurEvent.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* <App /> */}
    <SubmitInput/>
    <ClickDoubleClick/>
    <PassingValue/>
    <MultipleEvents/>
    <BlurEvent/>
  </StrictMode>,
)
