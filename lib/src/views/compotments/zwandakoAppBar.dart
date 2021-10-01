import 'package:flutter/material.dart';
import 'package:ndako243/src/utils/colors.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';

typedef void OnPressed();

class ZwandakoAppBar extends StatefulWidget {
  final Widget? leading, actions, title;
  final OnPressed? onPressedleading, onPressedactions;
  final Ndako243Text? zwandakoText;
  const ZwandakoAppBar({
    Key? key,
    this.leading,
    this.actions,
    this.onPressedleading,
    this.onPressedactions,
    this.zwandakoText,
    this.title,
  })  : assert(zwandakoText != null,
            'A non-null Widget must be to providede to this widget .Please verify your code and try again'),
        super(key: key);

  @override
  _ZwandakoAppBarState createState() => _ZwandakoAppBarState();
}

class _ZwandakoAppBarState extends State<ZwandakoAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: AppBar(
        backgroundColor: WhiteColor,
        leading: widget.leading != null
            ? IconButton(
                onPressed: widget.onPressedleading,
                icon: Icon(
                  Icons.menu,
                  color: BlackColor,
                ),
                splashRadius: 20,
              )
            : SizedBox.shrink(),
        title: widget.zwandakoText,
        centerTitle: true,
        actions: [
          widget.actions != null
              ? IconButton(
                  onPressed: widget.onPressedactions,
                  icon: Icon(Icons.ballot),
                  splashRadius: 20,
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
