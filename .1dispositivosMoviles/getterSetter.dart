void main() {
  final c = cuadrado(lado: 5);
  print('el area es: ${c.area}');

  //*usando setter
  c.setLado = 10;

  //*mandando a llamar al getter
  final a = c.area;
  print(a);
}

class cuadrado {
  int lado;

  //?esta por nombre
  cuadrado({required this.lado});

  //*getter
  //info: si no recibe parametros podemos quitar los parentesis
  get area {
    return this.lado * this.lado;
  }

  //*setter
  set setLado(int lado) {
    if (lado < 0) {
      this.lado = 1;
    }
    this.lado = lado;
  }
}
