import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/utils/colors.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';
import 'package:ndako243/src/views/compotments/textbox/textbox.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isNumber = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: BlackColor),
        ),
        backgroundColor: WhiteColor,
        title: Text(
          "Sign Up",
          style: TextStyle(color: BlackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // height: size.height * .5,
                width: size.width,
                decoration: BoxDecoration(
                    color: WhiteColor, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: FontSize.meduim,
                            color: BlackColor,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: !isNumber ? "Sign up with\n" : "Login\n"),
                          TextSpan(
                            text: !isNumber
                                ? "email or phone number"
                                : "with your phone number",
                            style: TextStyle(
                              color: BlackColor,
                              fontWeight: FontWeight.normal,
                              fontSize: FontSize.small,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    !isNumber
                        ? Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: IconSize.sizeIcon,
                                ),
                                SizedBox(width: 10),
                                Ndako243Text(
                                  textAlign: TextAlign.left,
                                  text: "nadko@exemple@exemple.com",
                                ),
                              ],
                            ),
                          )
                        : SizedBox.shrink(),
                    !isNumber
                        ? Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Text("Or"),
                                ),
                                Expanded(
                                  child: Divider(),
                                ),
                              ],
                            ),
                          )
                        : SizedBox.shrink(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isNumber = !isNumber;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: IconSize.sizeIcon,
                            ),
                            SizedBox(width: 10),
                            Ndako243Text(
                              textAlign: TextAlign.left,
                              text: "+243 978 971 530",
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: isNumber
                                  ? Icon(
                                      Icons.verified,
                                      color: Colors.green,
                                    )
                                  : SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: SizedBox(
                        width: size.width,
                        child: MaterialButton(
                          color: Background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {},
                          child: Ndako243Text(
                            text: "SIGN IN",
                            color: WhiteColor,
                            fontSize: FontSize.small,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // DecoratedBox(decoration: decoration), //TODO: Verify this widget
            SizedBox(height: 20),
            Padding(
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
          ],
        ),
      ),
    );
  }
}
