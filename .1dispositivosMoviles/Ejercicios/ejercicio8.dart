//!LopezRamosAsaelEfrain

void main(){
  final prod = Producto(precio: -123);
  print('Precio: ${prod.precio}');
}

class Producto{
  double _precio;
  
  Producto({required double precio}):_precio = precio;
  
  get precio{
    if(_precio > 0){
      return _precio;
    }
    return 0.0;
  } 
}