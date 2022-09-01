// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  gotohomepage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
    // Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    print("height = $h");
    print("width = $w");
    print("");

    double padV = (0.05 * w); // vertical padding
    double padH = 0; // horizontal padding
    double imgH = 0.4 * h; // image height
    var defaultColour = Colors.deepPurple; //Color.fromRGBO(143, 0, 255, 1);

    if (h > w || Platform.isAndroid || Platform.isIOS) {
      padH = (0.1 * w);
    } else {
      padH = (0.3 * w);
    }

    // print(padV);
    // print(padH);

    // String os = Platform.operatingSystem;
    // print(os);

    return Material(
        // child: Center(
        //     child: Text(
        //         'Login Page',
        //         style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.blue,
        //             fontWeight: FontWeight.bold,
        //         ),
        //         textScaleFactor: 1.5,
        //     ),
        // ),

        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                "assets/images/login1.png",
                height: imgH,
              ),
              SizedBox(height: 20),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  color: defaultColour,
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.5,
              ),
              SizedBox(height: 10),
              Padding(
                // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                padding: EdgeInsets.symmetric(vertical: padV, horizontal: padH),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your NISER Email ID',
                        labelText: 'NISER Email ID',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size(120, 40),
                        backgroundColor: defaultColour,
                      ),
                      onPressed: () => gotohomepage(context),
                      child: Text("Next",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
