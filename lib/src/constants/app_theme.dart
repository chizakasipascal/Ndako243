// import 'package:ndako243/constants/constanst.dart';
import 'package:ndako243/src/utils/colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: WhiteTrasparent, //Background
  backgroundColor: Background,
  //primarySwatch: Blue,

  primaryColor: Background,
  accentColor: Background,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Grey.withOpacity(.5),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: buttomColorTeal,
      primary: WhiteColor,
      shadowColor: Grey,
      // textStyle: GoogleFonts.roboto(
      //   fontSize: FontSize.lard,
      //   color: WhiteColor,
      // ),
    ),
  ),

  //textTheme: _textTheme,

  // fontFamily: GoogleFonts.roboto(),
  splashColor: Background,
);
