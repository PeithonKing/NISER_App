// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../drawer_icons.dart";

import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const DP = "https://picsum.photos/100?image=11";  // Display Picture
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
                  backgroundImage: NetworkImage(DP),
                ),
              )),


          // Dashboard
          ListTile(
            leading: Icon(CupertinoIcons.house_fill, color: Colors.white,),
            // leading: Icon(Image.asset("assets/images/home.png"),)
            title: const Text(
              'Dashboard',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),


          // Canteen Menu
          ListTile(
            leading: Icon(DrawerIcons.canteen_menu, color: Colors.white,),
            title: const Text(
              'Canteen Menu',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.canteen_menu);
            },
          ),


          //Timetable
          ListTile(
            leading: Icon(DrawerIcons.timetable, color: Colors.white,),
            title: const Text(
              'Timetable',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),


          // Archive
          ListTile(
            leading: Icon(DrawerIcons.archive, color: Colors.white,),
            title: const Text(
              'Archive',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),


          // Listings
          ListTile(
            leading: Icon(DrawerIcons.listings, color: Colors.white,),
            title: const Text(
              'Listings',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),


          // Lost and Found
          ListTile(
            leading: Icon(CupertinoIcons.square_favorites_fill, color: Colors.white,),
            title: const Text(
              'Lost & Found',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),

          const Divider(
            height: 20,
            thickness: 1,
            // indent: 20,
            endIndent: 0,
            color: Colors.black12,
          ),


          // Settings
          ListTile(
            leading: Icon(DrawerIcons.settings, color: Colors.white,),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.25,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          ),

          const Divider(
            height: 20,
            thickness: 1,
            // indent: 20,
            endIndent: 0,
            color: Colors.black12,
          ),
        ]),
      ),
    );
  }
}
