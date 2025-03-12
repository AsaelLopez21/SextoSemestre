void main(){

}

class rectangulo{
  double _ancho = 1;
  double _alto = 1;

  rectangulo({this._alto = 1, this._ancho = 1});

  double area get{
    return _ancho*_alto;
  }
}