import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/utils/utils.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Ndako243Text(
              text: "Welcome Back",
              fontSize: FontSize.lard,
              fontWeight: FontWeight.bold,
              color: Background,
            ),
            SizedBox(height: 10),
            Ndako243Text(
              text: "Sign in up and continue",
            ),
            Container(
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
                        TextSpan(text: "OTP Verification\n"),
                        TextSpan(
                          text:
                              "An authentication caode has been sent to\n(+880) 111 222 333",
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: BlackColor,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: "I didn't receive code "),
                        TextSpan(
                          text: "Resend Code\n",
                          style: TextStyle(
                              color: Background, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "1:20 Sec left",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 20),
                    child: SizedBox(
                      width: size.width,
                      child: MaterialButton(
                        color: Background,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.Otp);
                        },
                        child: Ndako243Text(
                          text: "Verify Now",
                          color: Yellow,
                          fontSize: FontSize.small,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
