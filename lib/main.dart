// ignore_for_file: prefer_const_constructors

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:niser_app/firebase_options.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:google_fonts/google_fonts.dart';

import "settings.dart";

import 'pages/home.dart';
import 'utils/routes.dart';
import 'pages/login_page.dart';
import 'pages/canteen_menu.dart';

String last_at = "";
SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: true, // was false
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print('User granted permission: ${settings.authorizationStatus}');

  final fcmToken = await FirebaseMessaging.instance.getToken();
  http.get(Uri.parse('$DOMAIN/device_token/$fcmToken'));
  // print("FCM Token:$fcmToken");

  prefs = await SharedPreferences.getInstance();  // get shared preferences
  last_at = prefs!.getString("last_at") ?? startat0;  // get last_at from shared preferences
  prefs!.setString('last_at', last_at);  // set last_at to shared preferences

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static WebViewPlusController? wc;

  @override
  Widget build(BuildContext context) {
    var defaultColour = Colors.deepPurple; //Color.fromRGBO(143, 0, 255, 1);
    print(DOMAIN);

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: defaultColour
          // fontFamily: GoogleFonts.poppins().fontFamily,
          ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.webRoute,
      routes: {
        // MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.webRoute: (context) => WebPage(),
        // MyRoutes.canteen_menu: (context) => CanteenMenu(),
      },
    );
  }
}
