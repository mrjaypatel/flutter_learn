import 'package:flutter/material.dart';
import 'package:flutter_learn_1/screens/auth/signup.dart';
import 'package:flutter_learn_1/screens/home_page.dart';
import 'package:flutter_learn_1/screens/auth/login.dart';
import 'package:flutter_learn_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

//My App
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int myNumber = 30;
    // String name = "Jay";
    // bool check = false;
    // double number = 3.14;
    // num numcheck = 3.14;
    // var allAccept = "";
    // const id = 1234;
    // final pi = 3.14;

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        MyRoutes.rootRoute: (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignupPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
