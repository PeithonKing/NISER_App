// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'pages/home.dart';
import 'utils/routes.dart';
import 'pages/login_page.dart';
import 'pages/canteen_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultColour = Colors.deepPurple; //Color.fromRGBO(143, 0, 255, 1);

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: defaultColour
          // fontFamily: GoogleFonts.poppins().fontFamily,
          ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.canteen_menu,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.canteen_menu: (context) => CanteenMenu(),
      },
    );
  }
}
