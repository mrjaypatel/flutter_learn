import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/signup.png"),
            Text("Hello From " + data),
            TextField(
              decoration: InputDecoration(hintText: "Test Data"),
              onChanged: (value) {
                data = value;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
