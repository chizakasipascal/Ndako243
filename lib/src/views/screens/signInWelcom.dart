import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/constants/icon_size.dart';
import 'package:ndako243/src/utils/utils.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';
import 'package:ndako243/src/views/compotments/textbox/textbox.dart';

class SignInWelcom extends StatelessWidget {
  const SignInWelcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: IconSize.sizeIcon,
            color: BlackColor,
          ),
        ),
        backgroundColor: WhiteColor,
        title: Text(
          "Sign In",
          style: TextStyle(color: BlackColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Ndako243Text(
                  text: "Welcome Back",
                  fontSize: FontSize.lard,
                  fontWeight: FontWeight.bold,
                  color: Background,
                ),
                SizedBox(height: 5),
                Ndako243Text(
                  text: "Sign in up and continue",
                ),
                Container(
                  // height: size.height * .5,
                  margin: const EdgeInsets.only(top: 20),
                  width: size.width,
                  decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 20.0),
                    child: Column(
                      children: [
                        buildTextBox(
                          hint: "nadko@exemple@exemple.com",
                          textAlign: TextAlign.left,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Background,
                            size: IconSize.sizeIcon,
                          ),
                        ),
                        Divider(
                          color: Grey.withOpacity(.1),
                        ),
                        buildTextBox(
                          hint: "..........",
                          textAlign: TextAlign.left,
                          isPassword: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Background,
                            size: IconSize.sizeIcon,
                          ),
                        ),
                        Divider(
                          color: Grey.withOpacity(.1),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (bool? value) {},
                            ),
                            Ndako243Text(
                              text: "Remenber me",
                            ),
                            Spacer(),
                            Ndako243Text(
                              text: "Forget password?",
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width,
                          child: MaterialButton(
                            color: Background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            onPressed: () {},
                            child: Ndako243Text(
                              text: "SIGN IN",
                              color: WhiteColor,
                              fontSize: FontSize.small,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: BlackColor),
                          children: <TextSpan>[
                            TextSpan(text: "Already aheve an account?"),
                            TextSpan(
                              text: "sign Up!",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
