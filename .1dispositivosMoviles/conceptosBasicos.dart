void main() {
  //un valor no puede ser null
  String nombre = 'cosa';
  
  //otra forma de declarar variables, lo convierte a string
  //final apellido = 'uno';
  String apellido = 'uno';
  
  int edad = 43;
  double peso = 34.32;
  
  
  print('Mi nombre es: $nombre $apellido');
  print('Edad: $edad, Peso $peso');
  //print('adios mundo');
  
  print('----------------------');
  
  //? -> Significa que puede tener un valor null
  bool? isLoading = null;
  print('Cargando: $isLoading');
  //crea conflicto cuando se usa en condicionales porque el if solo compara true y false no null
  
  print('----------------------');
  
  //<> se usa para especificar el tipo de dato de la lista
  List<int> numeros = [1,2,3,4,5];//se puede crear lista con varios tipos de datos
  numeros.add(21);
  print(numeros);
  
  print('----------------------');
  for(int i=0;i<5;i++){
    print('numero: ${numeros[i]}');
  }
  
  print('----------------------');
  
  //string es para la llave y dynamic para valor 
  Map<String,dynamic> persona = {
    "nombre":"Hola",
    "apellidos":"Mundo",
    "peso":22,
    "edad":44,
    "isActive":true
  };
  
  //agregar otra clave valor a persona
  persona.addAll({"Sexo":"si"});
  
  print(persona);   
}
