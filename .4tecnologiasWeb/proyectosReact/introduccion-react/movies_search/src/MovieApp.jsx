import React from "react";
import { SearchMovie } from "./components/SearchMovie";

export const MovieApp = () => {
  const movies = ["Accion", "Terror"];

  return (
    <>
      {/* //g => busqueda de peliculas */}
      <SearchMovie />

      {/* //g => mostrar las perliculas  */}
      <ul>
        {movies.map((movie) => {
          return <li key = {movie} >{movie}</li>;
        })}
      </ul>
    </>
  );
};

export default MovieApp;
