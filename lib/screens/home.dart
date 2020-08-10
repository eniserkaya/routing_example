import 'package:flutter/material.dart';

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
        onPressed: () async {
//          Navigator.push(context,
//              MaterialPageRoute(builder: (context) => AboutScreen()));
          var responseFromNavigation = await Navigator.pushNamed(context, '/aboutScreen',arguments: 'Argument from home screen');
          if(responseFromNavigation == 'showDialog'){
            showDialog(context: context,builder: (context) => AlertDialog(
              title: Text('DATA'),
            ));
          }
        },
      ),
    );
  }
}
