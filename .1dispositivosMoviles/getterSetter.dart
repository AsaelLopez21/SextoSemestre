void main() {
  final c = cuadrado(lado: 5);
  print('el area es: ${c.area}');

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
}
