import 'package:flutter/material.dart';
import 'package:navigationanddialogs/routes/pages.dart';
import 'package:navigationanddialogs/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      /* home: const HomePage(), */
      initialRoute: Pages.initialRoute,
      routes: Pages.routes,
      navigatorKey: MyRouter.instance.key,
    );
  }
}
