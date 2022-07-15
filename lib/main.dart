import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

//My App
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(child: Text("Hello World")),
        ),
      ),
    );
  }
}
