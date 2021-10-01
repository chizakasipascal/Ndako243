import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'src/views/screens/introductionSlider/introductionSlider.dart';

class Ndako243 extends StatelessWidget {
  const Ndako243({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      home: IntroductionPages(),
      initialRoute: Routes.initPage,
      routes: Routes.routes,
    );
  }
}
