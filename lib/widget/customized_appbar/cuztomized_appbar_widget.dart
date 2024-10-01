import "package:flutter/material.dart";

import "appbar_widget.dart";
import "back_screen_widget.dart";

class CuztomizedAppbarWidget extends StatefulWidget {
  const CuztomizedAppbarWidget({super.key});

  @override
  State<CuztomizedAppbarWidget> createState() => _CuztomizedAppbarWidgetState();
}

class _CuztomizedAppbarWidgetState extends State<CuztomizedAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CustomizedAppBar(),
        BackToPrevScreenButton(),
      ],
    );
  }
}
