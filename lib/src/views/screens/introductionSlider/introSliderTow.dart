import 'package:ndako243/src/constants/constanst.dart';
import 'package:flutter/material.dart';
import 'package:ndako243/src/views/screens/introductionSlider/compotments/compotments.dart';

class IntroSliderTwo extends StatelessWidget {
  const IntroSliderTwo({Key? key}) : super(key: key);

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
                  child: Placeholder(
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CardSlider(
                  size: size,
                  title: "Real Estate Agent",
                  subtitle:
                      "Welcom to Realestate\nHouse By and seling online lowest\nCheck scheaule Boarding",
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
