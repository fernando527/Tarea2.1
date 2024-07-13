import 'package:flutter/material.dart';

class CuntomInput extends StatelessWidget {
  const CuntomInput({
    super.key,
    required this.controller,
    required this.label,
    this.icon = Icons.person,
    this.obscureText = false,
    this.maxLength = 20,
    this.errorText,
    this.keyboardType = TextInputType.text,
    required this.validator,
  });

  final String label;
  final IconData icon;
  final bool obscureText;
  final int maxLength;
  final String? errorText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Ingrese su $label',

        suffix: InkResponse(
          splashColor: Colors.teal[50],
          onTap: () {
            print('Mostrar contraseña');
          },
          child: const Icon(
            Icons.remove_red_eye,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.white), // Borde blanco
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide:
              BorderSide(color: Colors.white), // Borde blanco al enfocarse
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
              color: Colors.white), // Borde blanco cuando está habilitado
        ),
        icon: Icon(icon, color: Colors.white), // Icono principal en blanco
        label: Text(label,
            style: const TextStyle(color: Colors.white)), // Etiqueta en blanco
      ),
      maxLength: maxLength,
    );
  }
}
