//!LopezRamosAsaelEfrain

import 'dart:math';

void main(){
  double radio = 3;
  final c = Circulo(radio);
  print('Es grande: ${c.esGrande(radio)}, area: ${c.area}');
}

class Circulo{
  double _radio;
  
  Circulo([double radio=1]): _radio = radio;
  
  get area{
    return pi*(_radio*_radio);
  }
  
  bool esGrande(double radio){
    if(radio>100){
      return true;
    }
    return false;
  }
}