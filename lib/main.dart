import 'package:flutter/material.dart';
import 'package:flutter_learn_1/home_page.dart';

void main() {
  runApp(myApp());
}

//My App
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int myNumber = 30;
    String name = "Jay";
    bool check = false;
    double number = 3.14;
    num numcheck = 3.14;
    var allAccept = "";
    const id = 1234;
    final pi = 3.14;

    return MaterialApp(home: HomePage());
  }
}
