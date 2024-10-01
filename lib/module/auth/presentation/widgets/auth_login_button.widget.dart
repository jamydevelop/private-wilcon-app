import "package:flutter/material.dart";

class AuthLoginButtonWidget extends StatelessWidget {
  const AuthLoginButtonWidget({
    super.key,
    required this.onPress,
  });

  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context)
          .size
          .width, // Set the width to 100% of the screen
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          minimumSize:
              const Size(double.infinity, 52), // Set the height to 52px
          padding:
              const EdgeInsets.all(16), // Add padding inside the button of 16px
          foregroundColor: Colors.white, // Set text color to white
        ),
        onPressed: onPress,
        child: const Text("Login"),
      ),
    );
  }
}
