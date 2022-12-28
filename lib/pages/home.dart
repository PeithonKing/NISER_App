// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:niser_app/settings.dart';
import 'dart:io' show Platform;
import '../utils/routes.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import '../widgets/drawer.dart';
import "../main.dart";
// import 'package:flutter_session/flutter_session.dart';


class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();

  // void openDrawer() {
  //   // Scaffold.of(context).openDrawer();
  // }

}


// WebViewController? controllerGlobal = MyApp.wc;

class _WebPageState extends State<WebPage> {

  var web = WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: last_at,
        onWebViewCreated: (controller) {
                MyApp.wc = controller;
              },
        // initialUrl: 'assets/canteen-menu/index.html',
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => handleBack(context), // handles back button being pressed
      child: Scaffold(
        appBar: AppBar(
          title: Text("Website"),
        ),
        body: web,
        drawer: const MyDrawer()
      ),
    );
  }
}

Future<bool> handleBack(BuildContext context) async {

  if (await MyApp.wc!.webViewController.canGoBack()) {
    print("onwill goback");
    MyApp.wc?.webViewController.goBack();
    return Future.value(false);
  } else {
    // Scaffold.of(context).showSnackBar(
    //   const SnackBar(content: Text("No back history item")),
    // );
    return Future.value(true);
  }
}

