import React, { useState } from "react";

export const SearchMovie = () => {
  const[inputValue, setInputValue] = useState('Pelicula')

  onChangeInputValue =()=>{
    // //o => campturar los datos y el inputValue
  }
    
  return (
    <>
      <div className="mt-4 container-fluid">
        <div className="row">
          <div className="col"></div>
          <div className="col">
            <form>
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
