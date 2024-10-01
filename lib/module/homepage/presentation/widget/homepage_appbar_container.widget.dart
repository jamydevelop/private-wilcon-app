import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../widget/checklist_modal/dropdown_checklist_widget.dart";
import "../../../../widget/customized_appbar/appbar_widget.dart";
import "../../../../widget/project_modal/dropdown_project_widget.dart";
import "../../../notifications/domain/cubit/notification_total/notification_total_cubit.dart";
import "homepage_draft_list_button.widget.dart";
import "text_widget/security_text_widget.dart";

class HomepageAppbarContainerWidget extends StatefulWidget {
  const HomepageAppbarContainerWidget({super.key});

  @override
  State<HomepageAppbarContainerWidget> createState() =>
      _HomepageAppbarContainerWidgetState();
}

class _HomepageAppbarContainerWidgetState
    extends State<HomepageAppbarContainerWidget> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationTotalCubit>().fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // This container is used to create the shadow below the widget
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 20, // Adjust height for shadow effect
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  offset: const Offset(0, 10), // Position the shadow underneath
                  blurRadius: 20, // Blur effect of the shadow
                  spreadRadius: 5, // Spread radius of the shadow
                ),
              ],
            ),
          ),
        ),
        // This is your original widget with elevation around it
        Material(
          color: Colors.transparent,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: <Widget>[
                  // Use BlocBuilder to listen to the Cubit state and update unreadNotificationCount
                  BlocBuilder<NotificationTotalCubit, NotificationTotalState>(
                    builder:
                        (BuildContext context, NotificationTotalState state) {
                      return state.maybeWhen(
                        loading: () => const CircularProgressIndicator(),
                        fulfilled: (int totalCountUnreadNotification) =>
                            CustomizedAppBar(
                          unreadNotificationCount:
                              totalCountUnreadNotification, // Adjust according to your entity structure
                        ),
                        error: () => const Text("Error loading notifications"),
                        orElse: () => const CustomizedAppBar(),
                      );
                    },
                  ),
                  const SizedBox(height: 48),
                  const SecurityTextWidget(),
                  const SizedBox(height: 24),
                  const DropdownChecklistWidget(),
                  const SizedBox(height: 12),
                  const DropdownProjectWidget(),
                  const SizedBox(height: 24),
                  const HomepageDraftListButtonWidget(),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
