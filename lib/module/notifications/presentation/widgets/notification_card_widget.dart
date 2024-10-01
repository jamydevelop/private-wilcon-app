import "package:flutter/material.dart";

class NotificationCardWidget extends StatefulWidget {
  const NotificationCardWidget(
      {super.key, required this.dateAndTime, required this.description});
  final String dateAndTime;
  final String description;

  @override
  State<NotificationCardWidget> createState() => _NotificationCardWidgetState();
}

class _NotificationCardWidgetState extends State<NotificationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero, // Remove any external margin
      elevation: 4.0, // Remove card shadow
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget
                        .dateAndTime, // Display the customizable date and time
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0), // Space between columns
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.more_vert_rounded, // Replace with any icon you like
              color: Colors.black,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
