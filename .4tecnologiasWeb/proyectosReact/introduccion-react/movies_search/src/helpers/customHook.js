import { useState, useEffect } from "react";

export const customHookMovie = (url) => {
  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true)
  let moviess = []  

  const getMovies = async () => {
    setLoading(true)
    const data = await fetch(url);
    const movies = await data.json();
    moviess = movies.results.map((peli) => {
      return {
        id: peli.id,
        title: peli.title,
        poster: peli.poster_path,
      };
    });
    setMovies(moviess);
    setLoading(false)
  };

  //O => use effect
  //y => primer argumento que va a hacer, segundo argumento cuando hacerlo
  useEffect(() => {
    // => cuando se pinte por primera vez has esto
    getMovies();
  }, []); // => cuando cambie esto has esto, cuando esta vacio se ejecuta solo una vez cuando se renderiza

  return {
    movies,
    getMovies
 };
};

