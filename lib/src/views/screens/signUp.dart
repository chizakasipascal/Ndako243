import 'package:flutter/material.dart';
import 'package:ndako243/src/utils/colors.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
            color: WhiteColor,
          )),
          // DecoratedBox(decoration: decoration), //TODO: Verify this widget
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: BlackColor),
                    children: <TextSpan>[
                      TextSpan(text: "Already aheve an account?"),
                      TextSpan(
                        text: "sign In",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
