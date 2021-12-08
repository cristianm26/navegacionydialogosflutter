import 'package:flutter/widgets.dart';
import 'package:navigationanddialogs/pages/dialogs_page.dart';
import 'package:navigationanddialogs/pages/home_page.dart';
import 'package:navigationanddialogs/pages/login_page.dart';
import 'package:navigationanddialogs/pages/second_page.dart';
import 'package:navigationanddialogs/pages/settings_page.dart';
import 'package:navigationanddialogs/routes/routes.dart';

abstract class Pages {
  static const String initialRoute = Routes.dialogs;
  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.second: (BuildContext context) {
      final name = ModalRoute.of(context)!.settings.arguments as String;
      return SecondPage(
        name: name,
      );
    },
    Routes.home: (_) => const HomePage(),
    Routes.login: (_) => const LoginPage(),
    Routes.settings: (_) => const SettingsPage(),
    Routes.dialogs: (_) => const DialogsPage(),
  };
}
