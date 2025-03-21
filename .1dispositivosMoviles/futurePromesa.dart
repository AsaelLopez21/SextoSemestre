//? modulo con metodos y funciones
import 'package:http/http.dart' as http;

//?para usar jsonDecode
import 'dart:convert';

void main() async {
  print('Entrando');
  final r = await getMessage();

  print(r);
  print('Saliendo');

  //* Future -> getMessage().then((msg)=>print(msg));
  //! Future ->getMessage().then(print).catchError((r) => print(r));

  //TODO:probando api
  Map<String, dynamic> pokes = {};
  pokes = await getPokemon();
  pokes.forEach((key, value) => print('${pokes[key]} - ${pokes[value]}'));
}

Future getMessage() {
  //info: recibe una clase -> duration, es como la instancia de duration por nombre
  //info: segundo parametro es un callback

  return Future.delayed(Duration(seconds: 3), () => 'Hola');
}

//info: trae datos de la api
Future<Map<String, dynamic>> getPokemon() async {
  final endPoint = Uri.parse('https://pokeapi.co/api/v2/pokemon/');

  final response = await http.get(endPoint);

  if (response.statusCode == 200) {
    //!estado 200 todo correcto
    return jsonDecode(response.body);
  } else {
    throw Exception('Error');
  }
}

//info: salida con Future: Entrando, Saliendo, Hola
//info: salida con await y async: Entrando, Hola, Saliendo

//          o  
//!        /|\   
//?         |  
//?        / \ 