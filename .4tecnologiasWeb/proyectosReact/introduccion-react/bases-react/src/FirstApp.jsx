import CustomCard from "./components/Card";

export const FirstApp = () => {
  return (
    <>
      {/*//yellow un comentario amarillo */}

      <div className="container-fluid">
        <div className="row">
          <CustomCard title={2117}/>
          <CustomCard edad = {21+9} />
          <CustomCard />
          <CustomCard />
        </div>
      </div>
    </>
  );
};

export default FirstApp;

//white UN COMENTARIO BLANCO
//pink UN COMENTARIO ROSA
//b UN COMENTARIO AZUL
//g UN COMENTARIO VERDE
//y UN COMENTARIO AMARILLO
//info UN COMENTARIO AZUL
//! UN COMENTARIO ROJO
//o UN COMENTARIO NARANJA 