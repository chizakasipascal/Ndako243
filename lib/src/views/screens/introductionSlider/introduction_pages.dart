import 'package:flutter/material.dart';
import 'package:ndako243/src/views/screens/introductionSlider/introductionSlider.dart';

class IntroductionPages extends StatefulWidget {
  const IntroductionPages({Key? key}) : super(key: key);

  @override
  _IntroductionPagesState createState() => _IntroductionPagesState();
}

class _IntroductionPagesState extends State<IntroductionPages> {
  int? _selectedIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: <Widget>[
              IntroSliderOne(),
              IntroSliderTwo(),
              IntroSliderThree()
            ],
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
