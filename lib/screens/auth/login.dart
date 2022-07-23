import 'package:flutter/material.dart';
import 'package:flutter_learn_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool loginClick = false;
  final _formKey = GlobalKey<FormState>();

  //Custom Method to navigate to homepage
  moveToHome(context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (loginClick) {
          loginClick = false;
        } else {
          loginClick = true;
        }
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.signupRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.fitWidth),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Logins " + username,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Username", labelText: "Username"),
                      onChanged: (value) {
                        username = value;
                        print(value + " " + username);
                        setState(() {
                          _formKey.currentState!.validate();
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Username.";
                        }

                        return null;
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password.";
                        } else if (value!.length < 6) {
                          return "Please Enter Min 6 Digit Password.";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: AnimatedContainer(
                        height: loginClick ? 50 : 150,
                        width: loginClick ? 100 : 50,
                        alignment: Alignment.center,
                        child: loginClick
                            ? Icon(
                                Icons.tag_faces_outlined,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                // textAlign: TextAlign.center,
                              ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        duration: Duration(seconds: 1),
                      ),
                      onTap: () => moveToHome(context),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     Navigator.pushNamed(context, MyRoutes.signupRoute);
                    //   },
                    //   child: const Text("Login"),
                    //   style:
                    //       TextButton.styleFrom(minimumSize: const Size(200, 35)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
