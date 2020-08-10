import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing_examples/screens/about.dart';
import 'package:routing_examples/screens/home.dart';
import 'package:routing_examples/utils/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutScreen(settings.arguments));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Text('Böyle bir sayfa yok.'),
                  ),
                ));
    }
  }
}

