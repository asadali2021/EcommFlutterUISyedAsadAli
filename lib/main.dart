import 'package:flutter/material.dart';

import 'Ad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Ecom App UI",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          elevation: 6,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Ad(),
      ),
    );
  }
}
