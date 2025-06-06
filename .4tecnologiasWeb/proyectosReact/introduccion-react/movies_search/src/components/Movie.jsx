import React from 'react'

const url = 'https://image.tmdb.org/t/p/w500/'

export const Movie = ({poster, title})=> {
  const urlp = `${url}/${poster}`
  return (
    <>
      <div className="card" style={{ width: '18rem'}}>
        <img src={urlp} className="card-img-top" alt={title} />
        <div className="card-body">
          <h5 className="card-title">{title}</h5>
        </div>
      </div>
    </>
  )
}
