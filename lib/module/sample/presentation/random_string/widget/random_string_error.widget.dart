import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";

class RandomStringErrorWidget extends StatelessWidget {
  const RandomStringErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.tr("randomString.error"));
  }
}
