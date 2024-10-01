import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar(
      {super.key,
      this.height = kToolbarHeight,
      this.unreadNotificationCount = 0});
  final double height;
  final int unreadNotificationCount; // Add unread count

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 24),
        _wilconAppBar(context),
      ],
    );
  }

  Widget _wilconAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      color: Colors.transparent, // Change to your preferred color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/images/WilconLogoSmall1.png", // Path to your image asset
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        GoRouter.of(context).go("/notification-page");
                      },
                    ),
                    if (unreadNotificationCount > 0)
                      Positioned(
                        right: 6,
                        top: 6,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 18,
                            minHeight: 18,
                          ),
                          child: Text(
                            "$unreadNotificationCount",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer(); // Open the drawer
                    debugPrint("Menu Icon pressed!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
