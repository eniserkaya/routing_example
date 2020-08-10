import 'package:flutter/material.dart';
import 'package:routing_examples/router.dart';
import 'package:routing_examples/screens/about.dart';
import 'package:routing_examples/screens/home.dart';
import 'package:routing_examples/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cursorColor: Colors.red,
      ),
      initialRoute: homeRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
