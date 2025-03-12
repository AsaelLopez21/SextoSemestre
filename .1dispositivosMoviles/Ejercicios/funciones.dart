//!LopezRamosAsaelEfrain
void main() {
  //!Argumentos posicionales
  print(suma(3, 5));

  //!Argumentos por nombre
  saludo(veces: 3, nombre: 'Omar');

  //!Argumentos requerdos
  saludoRequerido(nombre: 'Omar');
}

//!Argumentos posicionales
int suma(int numero1, int numero2) {
  return numero1 + numero2;
}

//!Argumentos por nombre
void saludo({String? nombre, int? veces = 1}) {
  while (veces != 0) {
    print('Hola $nombre');
    if (veces != null) {
      veces--;
    }
  }
}

//!Argumentos requeridos
void saludoRequerido({required nombre, int veces = 1}) {
  for (int i = 0; i < veces; i++) {
    print('Hola $nombre');
  }
}
