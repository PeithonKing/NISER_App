// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://picsum.photos/250?image=10";
    // const DP = "assets/images/dp.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Aritra Mukhopadhyay"),
                accountEmail: Text("aritra.mukhopadhyay@niser.ac.in"),
                currentAccountPicture: CircleAvatar(
                  // backgroundImage: AssetImage(DP),
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),

          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            // leading: Icon(CupertinoIcons),
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
