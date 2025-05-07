import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input field')),
      body: Column(
        children: [
          TextFormField(
            initialValue: 'ola',
            autofocus: true,
            textCapitalization: TextCapitalization.words,
            onChanged: (value) {
              print(value);
            },
            validator: (value) {
              if (value == null) return 'campo requerido';
              if (value.length < 4) return 'tamaño minimo 4';
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'nombre',
              labelText: 'labeltext',
              helperText: 'minimo4',
              counterText: 'hasta4',
              suffixIcon: Icon(Icons.account_circle),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextFormField(initialValue: 'ola', autofocus: true),
        ],
      ),
    );
  }
}
