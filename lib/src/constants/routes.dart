import 'package:flutter/material.dart';
import 'package:ndako243/src/views/screens/introductionSlider/introductionSlider.dart';
import 'package:ndako243/src/views/screens/screens.dart';

class Routes {
  Routes._();
  static const initPage = '/initPage';
  static const homeScreen = '/homeScreens';
  static const introductionPages = 'introductionPages';
  static const signUp = 'signUp';
  static final routes = <String, WidgetBuilder>{
    initPage: (BuildContext context) => InitPage(),
    homeScreen: (BuildContext context) => HomeScreen(),
    introductionPages: (BuildContext context) => IntroductionPages(),
    signUp: (BuildContext contect) => SignUp()
  };
}
