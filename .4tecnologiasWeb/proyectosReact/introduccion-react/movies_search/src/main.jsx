import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import  MovieApp  from './MovieApp'


createRoot(document.getElementById('root')).render(
  <StrictMode>
    <MovieApp></MovieApp>
  </StrictMode>,
)
//! API KEY TMD: 90a80049eeae86e04ced1a9cc9c2d6a3