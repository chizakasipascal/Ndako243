import 'package:flutter/material.dart';
import 'package:ndako243/src/utils/utils.dart';

class TextBoxDialog extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final String? labelText;
  final isPassword;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextStyle? style;
  final validator;

  const TextBoxDialog({
    Key? key,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.isPassword = false,
    this.labelText,
    this.suffixIcon,
    this.validator = FormValidator.valueExists,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          style: style,
          obscureText: isPassword,
          keyboardType: keyboardType,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: TextStyle(
              color: Color(0xff525A6C),
              fontSize: 14,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          validator: validator,
          controller: controller,
        ),
      ],
    );
  }
}
