//Y :recomendable poner funciones afuera
// const suma = (a,b) => a+b;

//w {JSON.stringify(persona)}
// const persona = {
//   nombre: "hola",
//   edad: 40
// };

export const CustomCard = ({title, edad = 40}) => {

  console.log('propiedad', title);

  return (
    <>
      <div className="card ms-3 mt-1" style={{ width: '300px' }}>
        <div className="card-body">
          <h5 className="card-title"> Titulo de card: {title}, edad {edad}</h5>
          <p className="card-text">
             Ejemplo rapido de como hacer un card
          </p>
          <a href="#" className="btn btn-primary">
            Ir a algún sitio 
          </a>
        </div>
      </div>
    </>
  );
}


export default CustomCard;
