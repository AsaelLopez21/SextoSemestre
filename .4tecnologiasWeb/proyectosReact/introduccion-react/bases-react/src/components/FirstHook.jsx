import { useState } from "react";

export const FirstHook = ({initialValue}) => {
//   let counter = initialValue;

//   const mensaje = () =>{
//     counter++;
//     console.log('click');
//   }
  const [counter, setCounter] = useState(initialValue);
  
  const increment = () => {
    setCounter(counter + 1); //y poner nuevo valor del contador, no counter++
  }

  return (
    <>
      <h6>Valor de la variable</h6>
      <h4>{counter}</h4>
      <button className="btn btn-primary" onClick={increment} >Incrementar</button>
    </>
  );
};
