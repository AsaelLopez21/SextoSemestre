//!LopezRamosAsaelEfrain

void main(){
  final p = Persona(nombre:"Asael",apellido:"Lopez");
  print('Nombre completo ${p.nombreCompleto}');
}

class Persona{
  String nombre;
  String apellido;
  
  Persona({required this.nombre,required this.apellido});
  
  get nombreCompleto{
    return '$nombre $apellido';
  }

  
} 