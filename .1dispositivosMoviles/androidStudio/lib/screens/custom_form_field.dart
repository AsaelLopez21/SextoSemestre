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
    this.obscureText = false,
    required this.myForm,
    required this.keyForm,
    this.initialValue,
  });

  final String hintText;
  final String labelText;
  final String helperText;
  final IconData icono;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Map<String, dynamic> myForm;
  final String keyForm;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: '',
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,

      onChanged: (value) {
        myForm[keyForm] = value;
      },

      validator: (value) {
        print('VALOR $value');
        if (value == null) return 'campo requerido';
        return value.length < 4 ? 'tamaño minimo 4 $labelText' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: 'hasta4',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: Icon(icono),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
