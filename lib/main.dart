import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";

import "infra/dependency_injection/locator.dart";
import "module/_master/presentation/master/master.page.dart";

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale("en")],
      path: "assets/translations",
      fallbackLocale: const Locale("en"),
      child: const MasterPage(),
      //child: const MasterPage(),
    ),
  );
}
