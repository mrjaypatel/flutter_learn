import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int myNumber = 78;
    return Scaffold(
      appBar: AppBar(
        title: Text("Humbingo"),
      ),
      body: Center(
        child: Container(child: Text("Hello World $myNumber")),
      ),
      drawer: Drawer(),
    );
  }
}
