import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void mostrarAlertaAndroid(BuildContext c) {
    // print('hola ;)')
    showDialog(
      context: c,
      barrierDismissible:
          false, //!Para que no se cierre cuandas das click fuera de la alerta
      builder: (BuildContext c) {
        // return Text('data');
        return AlertDialog(
          icon: Icon(Icons.whatshot),
          title: Text('Soy un mensaje de la alerta'),
          content: Column(
            //INFO: mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Cargando'),
              FlutterLogo(size: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(c, true); //!para cerrar la alerta
                    },
                    child: Text('Aceptar'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(c, true); //!para cerrar la alerta
                    },
                    child: Text('Cancelar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => mostrarAlertaAndroid(context),
          child: Text('alert'),
        ),
      ),
    );
  }
}
