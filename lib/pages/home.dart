// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        int days = 30;
        String name = "Aritra";

        return Scaffold(
                appBar: AppBar(
                    title: Text("Home Page"),
                ),
                body: Center(
                    child: Container(
                        child: Text('Hello World $days days $name'),
                    ),
                ),
                drawer: MyDrawer());
    }
}
