import React, { useState } from "react";

export const SearchMovie = ({onNewGenreMovie}) => {
  const[inputValue, setInputValue] = useState('')

  const onChangeInputValue =({target})=>{
    //p => console.log(event.target.value);
    setInputValue(target.value);
  }

  const onNewMovieGenre = (event)=>{
    event.preventDefault();
    onNewGenreMovie(inputValue)
    setInputValue('');
  }
    
  return (
    <>
      <div className="mt-4 container-fluid">
        <div className="row">
          <div className="col"></div>
          <div className="col">
            <form onSubmit={onNewMovieGenre}>
              <input
                className="form-control"
                type="text"
                name="searchmovie"
                placeholder="Search Movie"
                value={inputValue}
                onChange={onChangeInputValue}
              />
            </form>
          </div>
          <div className="col"></div>
        </div>
      </div>
    </>
  );
};

export default SearchMovie;
