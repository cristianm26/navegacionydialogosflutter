import 'package:flutter/material.dart';
import 'package:navigationanddialogs/routes/routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              /* final Route route = MaterialPageRoute(
                builder: (context) => const LoginPage(),
                settings: const RouteSettings(name: '/login-page'),
              );
              Navigator.pushAndRemoveUntil(
                context,
                route,
                (route) {
                  return route.settings.name == '/';
                },
              ); */
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.settings, (route) => false);
            },
            child: const Text("Registrate"),
          ),
          TextButton(
            onPressed: () {
              Navigator.popUntil(context, (route) {
                return route.settings.name == '/';
              });
            },
            child: const Text("Ir a Primera Pagina"),
          ),
        ],
      ),
    );
  }
}
