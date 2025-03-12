void main() {
  //funciones
  //saludo();
  saludo2("int m", " = 12;");
  saludo("pongan");
}

void saludo2(String msg, String msg2) {
  //forma de enviar parametros:posicional
  print('$msg $msg2');
}

//los argumentos opcionales van en corchete
//argumentos de saludo: posicional, opcional
void saludo(String msg, [String msg2 = 'bachata']) {
  print('$msg $msg2');
}
