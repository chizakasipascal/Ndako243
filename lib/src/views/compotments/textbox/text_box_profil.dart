import 'package:flutter/material.dart';
import 'package:ndako243/src/utils/utils.dart';

typedef String Validator(string);
typedef void OnSaved(string);

Widget buildTextBoxProfil(String hint,
    {Widget? suffixIcon,
    Widget? prefixIcon,
    TextEditingController? controller,
    String? label,
    Validator? validator,
    OnSaved? onSaved,
    TextInputType inputType = TextInputType.text,
    bool enable = true,
    bool isPassword = false}) {
  return TextFormField(
    enabled: enable,
    keyboardType: inputType,
    obscureText: isPassword,
    controller: controller,
    cursorColor: Background,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 10.0),
      labelText: label,
      labelStyle: TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
      hintText: hint,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
    validator: validator,
    onSaved: onSaved,
  );
}
