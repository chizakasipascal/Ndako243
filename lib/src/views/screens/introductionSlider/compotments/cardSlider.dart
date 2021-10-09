import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/utils/utils.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';

typedef void OnPressed();

class CardSlider extends StatelessWidget {
  final String? title, subtitle, descptionButtomText;
  final OnPressed? onPressed;
  const CardSlider({
    Key? key,
    required this.size,
    this.title,
    this.subtitle,
    this.descptionButtomText,
    this.onPressed,
  })  : assert(title != null || subtitle != null || descptionButtomText != null,
            'A non-null String musr be to providede to this widget .Please verify your code and try again'),
        super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .4,
      width: size.width,
      margin: const EdgeInsets.only(
        top: 10.0,
      ),
      decoration: BoxDecoration(
        color: Background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Ndako243Text(
            text: title,
            color: WhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: FontSize.lard,
          ),
          Ndako243Text(
            text: subtitle,
            color: WhiteColor,
            fontSize: FontSize.small,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: size.width * .6,
            child: MaterialButton(
              color: buttomColorTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: onPressed,
              child: Ndako243Text(
                text: descptionButtomText,
                color: WhiteColor,
                fontSize: FontSize.small,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
