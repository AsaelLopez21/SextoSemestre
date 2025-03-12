void main() {
  //por nombre, porque pones el nombre del parametro
  //msg puede ser null (opcional)
  clase951(data: "hola", msg: "mundo");
  mostrarPersona(edad: 21, nombre: "Asael", peso: 33.2, apellido: "Lopez");
}

//{} -> para usar el paso por nombre deben de ir entre llaves los parametros
//String? msg -> puedo enviar o no el parametro msg
//required es para un valor que si me tiene que enviar

void clase951({String? msg, required String data}) {
  print('$msg, $data');
}

//se quita el signo de interrogacion para hacer el valor por defualt
void clase952({String msg = "soy valor por default", required String data}) {
  print('$msg, $data');
}

//funcion que reciba datos de una persona y que su peso de la persona sea opcional: nombre, apellido, edad, peso opcional
void mostrarPersona({
  required String nombre,
  required String apellido,
  required int edad,
  double? peso,
}) {
  print('Soy $nombre, $apellido, mi edad: $edad, mi peso:$peso');
}

