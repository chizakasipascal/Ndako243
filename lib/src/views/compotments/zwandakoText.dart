import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/utils/colors.dart';

class Ndako243Text extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  const Ndako243Text({
    Key? key,
    this.text = '',
    this.color = BlackColor,
    this.fontWeight = FontWeight.normal,
    this.fontSize = FontSize.small,
    this.textAlign = TextAlign.center,
  })  : assert(text != null,
            'A non-null String must be provided to a ZwandakoText widget.'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
