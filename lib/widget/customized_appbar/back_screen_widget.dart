import "package:flutter/material.dart";

class BackToPrevScreenButton extends StatelessWidget {
  const BackToPrevScreenButton({super.key, this.onPress});
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Aligns the widget to the left
      child: SizedBox(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
                top: 14.0, left: 12.0, right: 12.0), // Customize padding
            backgroundColor: Colors.transparent, // Transparent background
          ),
          onPressed: onPress, // No default function, relies on the programmer
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              SizedBox(width: 8.0),
              Text(
                "Back",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
