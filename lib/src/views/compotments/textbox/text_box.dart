import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/fontSize.dart';
import 'package:ndako243/src/utils/utils.dart';

typedef String Validator(string);
typedef void OnSaved(string);

Widget buildTextBox(
    {String? hint,
    TextAlign textAlign = TextAlign.center,
    Widget? suffixIcon,
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
    textAlignVertical: TextAlignVertical.center,
    textAlign: textAlign,
    decoration: InputDecoration(
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 10.0),
      labelText: label,
      labelStyle: TextStyle(
        fontSize: FontSize.small,
        color: Colors.black,
      ),
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: FontSize.small,
        color: Grey.withOpacity(.5),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
    validator: validator,
    onSaved: onSaved,
  );
}
