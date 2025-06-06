import { Movie } from "./Movie";
import {customHookMovie} from '../helpers/customHook.js'

export const MovieGenre = ({ name, id }) => {
  //y = segmentar la url
  const url = `https://api.themoviedb.org/3/discover/movie?api_key=90a80049eeae86e04ced1a9cc9c2d6a3&with_genres=${id}`;

  //! =>
  const {movies} = customHookMovie(url)

  return (
    <>
      <hr />
      {movies.map((movie) => {
        return (
          <Movie key={movie.id} title={movie.title} poster={movie.poster} />
        );
      })}
    </>
  );
};
