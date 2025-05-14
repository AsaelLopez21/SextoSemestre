import 'package:app_dos/screens/custom_form_field.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingresar valores')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomFormField(
              hintText: 'hintText',
              labelText: 'labelText',
              helperText: 'helperText',
              icono: Icons.people_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
