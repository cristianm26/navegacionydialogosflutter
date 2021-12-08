import 'package:flutter/material.dart';

class MyRouter {
  MyRouter._();

  static MyRouter instance = MyRouter._();

  GlobalKey<NavigatorState> key = GlobalKey();
}
