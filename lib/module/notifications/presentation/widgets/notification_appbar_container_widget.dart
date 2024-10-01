import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../../../widget/customized_appbar/appbar_widget.dart";
import "../../../../widget/customized_appbar/back_screen_widget.dart";
import "../../../../widget/header_bar_widget.dart";

class NotificationAppbarContainerWidget extends StatefulWidget {
  const NotificationAppbarContainerWidget({super.key});

  @override
  State<NotificationAppbarContainerWidget> createState() =>
      _NotificationAppbarContainerWidgetState();
}

class _NotificationAppbarContainerWidgetState
    extends State<NotificationAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: use_colored_box
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 24),
            const CustomizedAppBar(),
            // GoRouter.of(context).go("/home-page");
            BackToPrevScreenButton(
              onPress: () {
                GoRouter.of(context).go("/home-page");
              },
            ),
            const SizedBox(height: 12),
            const HeaderBar(
              text: "Notifications",
              isYellow: false,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
