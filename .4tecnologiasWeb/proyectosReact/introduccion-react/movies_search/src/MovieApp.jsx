import React from "react";
import { SearchMovie } from "./components/SearchMovie";
import { useState } from "react";
import { MovieGenre } from "./components/MovieGenre";

export const MovieApp = () => {

  const [movieGenre, setMovieGenre] = useState([]);

  const onNewGenreMovie = (newGenre) => {
    setMovieGenre([newGenre, ...movieGenre])
  };

  return (
    <>
      {/* //g => busqueda de peliculas */}
      <SearchMovie onNewGenreMovie={onNewGenreMovie}/>

      {/* //g => mostrar las perliculas  */}
        {movieGenre.map((movie) => {
          return <MovieGenre key = {movie} genreMovie={movie}></MovieGenre>
        })}
    </>
  );
};

export default MovieApp;
