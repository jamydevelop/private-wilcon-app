import "package:flutter/material.dart";

import "auth_img_tagline.widget.dart";

class AuthImgBackgroundWidget extends StatefulWidget {
  const AuthImgBackgroundWidget({super.key});

  @override
  State<AuthImgBackgroundWidget> createState() =>
      _AuthImgBackgroundWidgetState();
}

class _AuthImgBackgroundWidgetState extends State<AuthImgBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 337, // Background Image Height
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/wilcon_ph.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 337,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.transparent,
                Colors.white, // Adjust the opacity at the bottom
              ],
              stops: <double>[
                0.0,
                1.0
              ], // Adjust stops to control the gradient spread
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AuthImgTaglineWidget(),
          ),
        ),
      ],
    );
  }
}
