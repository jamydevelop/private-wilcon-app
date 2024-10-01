import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";

class RandomStringLoadingWidget extends StatelessWidget {
  const RandomStringLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.tr("randomString.loading"));
  }
}
