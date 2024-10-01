import "package:flutter/material.dart";

import "auth_img_background.widget.dart";
import "auth_login_form.widget.dart";

class AuthBuildUiWidget extends StatefulWidget {
  const AuthBuildUiWidget({super.key});

  @override
  State<AuthBuildUiWidget> createState() => _AuthBuildUiWidgetState();
}

class _AuthBuildUiWidgetState extends State<AuthBuildUiWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        AuthImgBackgroundWidget(),
        AuthLoginFormWidget(),
      ],
    );
  }
}
