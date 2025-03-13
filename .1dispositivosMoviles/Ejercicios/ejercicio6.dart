//!LopezRamosAsaelEfrain

void main(){
  final rectangulo1 = Rectangulo(alto:3,ancho:2); 
  
  print('Area del rectangulo: ${rectangulo1.area}');
}

class Rectangulo{
  double _ancho = 1;
  double _alto = 1;

  Rectangulo({double alto = 1, double ancho = 1}):_alto = alto, _ancho = ancho;

  get area{
    return _ancho*_alto;
  }
}