import "package:flutter/material.dart";
import "auth_img_inventi.widget.dart";
import "auth_login_button.widget.dart";
import "auth_signed_in_text.widget.dart";

class AuthLoginFormWidget extends StatefulWidget {
  const AuthLoginFormWidget({super.key});

  @override
  State<AuthLoginFormWidget> createState() => _AuthLoginFormWidgetState();
}

class _AuthLoginFormWidgetState extends State<AuthLoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), // Optional: Adds rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Adjusted to min to avoid excessive height
                children: <Widget>[
                  const SizedBox(height: 24),
                  const AuthSignedInTextWidget(),
                  const SizedBox(height: 24),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email Address",
                        hintText: "guillenpaul070@gmail.com"),
                  ),
                  const SizedBox(height: 24),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "1234"),
                  ),
                  const SizedBox(height: 24),
                  AuthLoginButtonWidget(
                    onPress: () {},
                  ),
                  const SizedBox(height: 24),
                  const SizedBox(width: 99, height: 16),
                  const AuthImgInventiWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
