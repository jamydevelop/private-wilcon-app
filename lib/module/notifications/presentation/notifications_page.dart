import "package:flutter/material.dart";
import "../../../widget/sidebar_widget.dart";
import "widgets/notification_appbar_container_widget.dart";
import "widgets/notification_body_widget.dart";

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomSidebar(),
      body: SafeArea(
        // ignore: use_colored_box
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const Material(
                elevation: 4.0,
                shadowColor: Colors.black45,
                child: NotificationAppbarContainerWidget(),
              ),
              const SizedBox(height: 23.69),
              const SizedBox(height: 12),
              Expanded(
                child: Card(
                  margin: EdgeInsets.zero,
                  color: Colors.white,
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: const Column(
                    children: <Widget>[
                      Expanded(child: NotificationBodyWidget()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
