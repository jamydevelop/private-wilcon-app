import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../module/auth/presentation/auth.page.dart";
import "../../module/homepage/presentation/home.page.dart";
import "../../module/notifications/presentation/notifications_page.dart";
import "../../module/sample/presentation/random_string/random_string.page.dart";

class AppRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      //AuthPage
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const AuthPage();
        },
      ),
      GoRoute(
        path: "/home-page",
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      //AuthPage
      // GoRoute(
      //   path: "/",
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const HomePage(
      //       title: "Hallo",
      //     );
      //   },
      // ),
      GoRoute(
        path: "/notification-page",
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationsPage();
        },
      ),
      GoRoute(
        path: "/random-string",
        builder: (BuildContext context, GoRouterState state) {
          return RandomStringPage();
        },
      ),
    ],
  );
}
