import CustomCard from "./components/Card";
import { FirstHook } from "./components/FirstHook";

export const FirstApp = () => {
  return (
    <>
      {/*//yellow un comentario amarillo */}

      <div className="container-fluid">
        <div>
          {/* <CustomCard title={2117}/>
          <CustomCard edad = {21+9} />
          <CustomCard />
          <CustomCard /> */}
          <h3>Hook</h3>
          <FirstHook initialValue={10}></FirstHook>
        </div>
      </div>
    </>
  );
};

export default FirstApp;

//w => white UN COMENTARIO BLANCO
//p => ink UN COMENTARIO ROSA
//b => UN COMENTARIO AZUL
//g => UN COMENTARIO VERDE
//y => UN COMENTARIO AMARILLO
//info => UN COMENTARIO AZUL
//! => UN COMENTARIO ROJO
//o => UN COMENTARIO NARANJA 