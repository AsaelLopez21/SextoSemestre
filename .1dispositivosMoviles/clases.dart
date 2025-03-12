void main() {
  //usando map
  Map<String, dynamic> data = {"nombre": "Luis", "apellidos": "Diaz"};

  //diferentes formas de instanciar una clase
  Persona p1 = new Persona("ho", "la"); //usando el nombre de la clase
  final p2 = new Persona("mu", "n"); //usando la variable final
  final p3 = Persona("d", "o"); //no hace falta usar el new

  //!Pasando argumentos por nombre
  //final p3 = Persona(apellidos: "d",nombre: "o");

  print('$p1, $p2, $p3, $data');

  //!hacer instancia de persona con map
  final p = Persona.fromMap(data);
  print(p);
}

class Persona {
  String nombre;
  String apellidos;

  //!constructor usando instancia con map
  /*//info: (trabajando con constructor) poner un punto para saber como instanciar al objeto
   -from map, recibo de mapa y con eso hago una instancia
   -si no pongo: ? en los parametros de persona, el constructor va a dar error
   -porque el mapa puede que tenga valores nulos*/

  // Persona.fromMap(Map<String, dynamic> data) {
  //   this.nombre = data["nombre"];
  //   this.apellidos = data["apellidos"];
  // }

  //!constructor que no acepta null
  /*//info:en este constructor asigna la informacion un poco antes, tengo que verificar que se pase la informacion
  */
  Persona.fromMap(Map<String, dynamic> data)
    : this.nombre = data["nombre"] ?? "no nombre",
      this.apellidos = data["apellidos"] ?? "no apellidos";

  //constructores, de esta forma ya no acepta null
  Persona(this.nombre, this.apellidos);

  //!asi es por nombre, si aceptamos null ponemos: ? en los parametros
  //Persona({this.nombre, this.apellidos});
  //!si queremos que sea obligatorio
  //Persona({required this.nombre, required this.apellidos});

  //sobreecribiendo el metodo toString
  @override
  String toString() {
    return '${this.nombre}, ${this.apellidos}';
  }
}
