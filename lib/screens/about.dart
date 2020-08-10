import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {

  String firstArgument;

  AboutScreen(this.firstArgument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Center(
        child: Text('AboutScreen: $firstArgument'),
      ),
    );
  }
}
