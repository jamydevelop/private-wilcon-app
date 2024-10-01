import "package:flutter/material.dart";

class AuthLoginTextfieldWidget extends StatelessWidget {
  const AuthLoginTextfieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.isObscure = false,
  });

  final String labelText;
  final TextEditingController? controller;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: ,
      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
