import React from "react";
import { SearchMovie } from "./components/SearchMovie";
import { useState } from "react";
import { MovieGenre } from "./components/MovieGenre";
import genres from "./helpers/genres_list"

export const MovieApp = () => {

  const [movieGenre, setMovieGenre] = useState([]);

  const onNewGenreMovie = (newGenre) => {
    const resp = genres.find((g)=>g.name === newGenre)
    
    //g => genero no se encuentra en la lista
    if(!resp) return

    
    setMovieGenre([resp, ...movieGenre])
  };

  return (
    <>
      {/* //g => busqueda de peliculas */}
      <SearchMovie onNewGenreMovie={onNewGenreMovie}/>

      {/* //g => mostrar las perliculas  */}
        {movieGenre.map((movie) => {
          return <MovieGenre key = {movie} name={movie.name} id={movie.id} ></MovieGenre>
        })}
    </>
  );
};

export default MovieApp;

/*
const resp = genres.find((g)=>{
      const genre = g.name.toLowerCase()
      const newGen = newGenre.toLowerCase()
      if(genre === newGen) return true
      return false 
    })
*/