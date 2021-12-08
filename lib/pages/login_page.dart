import 'package:flutter/material.dart';
import 'package:navigationanddialogs/pages/settings_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            final Route route = MaterialPageRoute(
              builder: (context) => const SettingsPage(),
            );
            Navigator.pushReplacement(context, route);
          },
          child: const Text("Ir a Home"),
        ),
      ),
    );
  }
}
