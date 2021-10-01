import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ndako243/src/views/screens/introductionSlider/compotments/compotments.dart';

class IntroSliderOne extends StatelessWidget {
  const IntroSliderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          child: Stack(
            children: [
              Container(
                height: size.height * .7,
                child: Center(
                  child: Image.asset(Assets.Image_test),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CardSlider(
                  size: size,
                  title: "Welcome to Relest",
                  subtitle:
                      "Welcome to Realestate\nHouse By and selling online at lowest\nCheck schedule Boking",
                  descptionButtomText: "Get Started",
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.homeScreen),
                ),
              ),
              Positioned(
                bottom: 2,
                left: 0,
                right: 0,
                child: Container(
                  height: 20,
                  width: 60,
                  color: Colors.green,
                  child: Center(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
