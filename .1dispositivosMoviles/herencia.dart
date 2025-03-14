void main() {}

class Heroe extends Personaje {
  //!mandar los datos al padre usando la palabra reservada super
  Heroe(String nombre, String poder) : super(nombre, poder);
}

class Personaje {
  String nombre;
  String? poder;

  Personaje(this.nombre, this.poder);

  //!override es opcional
  @override
  String toString() {
    return 'Nombre: $nombre, Poder: $poder';
  }
}
