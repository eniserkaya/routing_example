import 'package:flutter/material.dart';

import 'about.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hoşgeldiniz'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
//          Navigator.push(context,
//              MaterialPageRoute(builder: (context) => AboutScreen()));
          Navigator.pushNamed(context, '/about');
        },
      ),
    );
  }
}
