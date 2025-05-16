import 'package:app_dos/screens/custom_form_field.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, dynamic> myForm = {
      'nombre': 'Lolito',
      'apellidos': 'lolito@gmail',
      'password': 'lolito123',
    };

    return Scaffold(
      appBar: AppBar(title: Text('Ingresar valores')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 40),
                CustomFormField(
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  helperText: 'Nombre',
                  icono: Icons.person_outline_outlined,
                  obscureText: false,
                  myForm: myForm,
                  keyForm: 'nombre',
                ),
                SizedBox(height: 40),
                CustomFormField(
                  hintText: 'Apellidos',
                  labelText: 'Apellidos',
                  helperText: 'Apellidos',
                  icono: Icons.people_rounded,
                  obscureText: false,
                  myForm: myForm,
                  keyForm: 'apellidos',
                ),
                SizedBox(height: 40),
                CustomFormField(
                  hintText: 'Password',
                  labelText: 'Password',
                  helperText: 'Password',
                  icono: Icons.safety_check,
                  obscureText: true,
                  myForm: myForm,
                  keyForm: 'password',
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!formKey.currentState!.validate()) {
                        //y no es valido
                        print('formulario no valido');
                        return;
                      }
                      print('ENVIANDO DATOS $myForm');
                    },
                    child: Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
