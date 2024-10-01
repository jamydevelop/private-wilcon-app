import "package:flutter/material.dart";

class RandomStringFulfilledWidget extends StatelessWidget {
  const RandomStringFulfilledWidget({
    super.key,
    required this.randomString,
  });

  final String randomString;

  @override
  Widget build(BuildContext context) {
    return Text(randomString);
  }
}
