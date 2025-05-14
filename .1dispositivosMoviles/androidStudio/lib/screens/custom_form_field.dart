import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.helperText,
    required this.icono,
    this.suffixIcon,
    this.keyboardType,
  });

  final String hintText;
  final String labelText;
  final String helperText;
  final IconData icono;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

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
            keyboardType: keyboardType,
            onChanged: (value) {
              print(value);
            },
            validator: (value) {
              if (value == null) return 'campo requerido';
              if (value.length < 4) return 'tamaño minimo 4';
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'nombre',
              labelText: 'labeltext',
              helperText: 'minimo4',
              counterText: 'hasta4',
              suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
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
