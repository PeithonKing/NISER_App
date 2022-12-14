// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import '../utils/routes.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: const WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'http://192.168.0.104:8000/',
        // initialUrl: 'assets/canteen-menu/index.html',
      ),
      drawer: const MyDrawer()
    );
  }
}
