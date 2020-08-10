import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  String firstArgument;

  AboutScreen(this.firstArgument);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context,'showDialog');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, 'showDialog');
          },
        ),
        body: Center(
          child: Text('AboutScreen: $firstArgument'),
        ),
      ),
    );
  }
}
