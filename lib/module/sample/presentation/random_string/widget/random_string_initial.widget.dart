import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";

class RandomStringInitialWidget extends StatelessWidget {
  const RandomStringInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.tr("randomString.initial"));
  }
}
