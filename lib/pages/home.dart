// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:niser_app/settings.dart';
// import 'dart:io' show Platform;
// import '../utils/routes.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';
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

class _WebPageState extends State<WebPage> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // print("resumed");

      FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
        // Navigator.pushNamed(context, dynamicLinkData.link.path);
        // handle(dynamicLinkData.link.path);
        // last_at = DOMAIN + dynamicLinkData.link.path;
        MyApp.wc?.loadUrl(DOMAIN + dynamicLinkData.link.path);
      }).onError((error) {
        // Handle errors
        print(error);
      });
      // controllerGlobal?.reload();
    }
  }

  var web = WebView(
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
            actions: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  MyApp.wc?.reload();
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  MyApp.wc?.goBack();
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  MyApp.wc?.goForward();
                },
              ),
            ],
          ),
          body: web,
          drawer: const MyDrawer()),
    );
  }
}

Future<bool> handleBack(BuildContext context) async {
  if (await MyApp.wc!.canGoBack()) {
    // print("onwill goback");
    MyApp.wc?.goBack();
    return Future.value(false);
  } else {
    // Scaffold.of(context).showSnackBar(
    //   const SnackBar(content: Text("No back history item")),
    // );
    return Future.value(true);
  }
}
