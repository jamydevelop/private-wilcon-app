import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../widget/buttons_widget/filled_button_widget.dart";
import "../../domain/cubit/notification_list/notification_list_cubit.dart";
import "../../domain/entity/notification_list/notification_list.entity.dart";
import "notification_card_widget.dart";

class NotificationBodyWidget extends StatefulWidget {
  const NotificationBodyWidget({super.key});

  @override
  State<NotificationBodyWidget> createState() => _NotificationBodyWidgetState();
}

class _NotificationBodyWidgetState extends State<NotificationBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FutureBuilder<List<NotificationEntity>>(
        future: context.read<NotificationListCubit>().fetch(),
        builder: (BuildContext context,
            AsyncSnapshot<List<NotificationEntity>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while fetching data
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No notifications available."));
          }

          return ListView.builder(
            itemCount:
                snapshot.data!.length + 1, // Add one for the "Load More" button
            itemBuilder: (BuildContext context, int index) {
              if (index < snapshot.data!.length) {
                final NotificationEntity data = snapshot.data![index];
                return NotificationCardWidget(
                  dateAndTime: data.createdAt,
                  description: data.description,
                );
              } else {
                // Last item is the Load More button
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButtonWidget(
                    titleText: "Load More",
                    onPress: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Load More Button Pressed!"),
                          duration: Duration(
                              seconds: 2), // Duration the SnackBar is displayed
                        ),
                      );
                    },
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
