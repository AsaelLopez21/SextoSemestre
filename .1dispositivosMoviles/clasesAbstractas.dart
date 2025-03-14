void main() {
  final p = Perro('Mono');
  p.emitirSonido();

  //!Otra forma de implementar sonido
  emitirSonido(p);

  //***************** */
  final plp = Pulpo('bobito', 8, 120);
  emitirSonido(plp);
}

//!Implementa el sonido recibiendo como parametro una implementacion de la clase animal
void emitirSonido(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  //*hacer opcional el numero de patas
  int? patas;

  void emitirSonido();
}

class Perro implements Animal {
  String nombre;
  int? patas;

  //*Usar flecha si solo se esta usando una linea+
  void emitirSonido() => print('guau');

  // void emitirSonido() {
  //   print('guau');
  // }

  Perro(this.nombre);
}

class Pulpo implements Animal {
  String nombre;
  int? patas;
  int tamanioMetros;

  void emitirSonido() => print('...');
  Pulpo(this.nombre, this.patas, this.tamanioMetros);
}
