// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../drawer_icons.dart";
// import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utils/routes.dart';
import "../pages/home.dart";
import "../main.dart";
import "../settings.dart";

// Future<String> fetchAlbum() async {
//   final response =
//       await http.get(Uri.parse('$DOMAIN/drawer_info/'));

//   if (response.statusCode == 200) {
//     // var a = jsonDecode(response.body);
//     // var b = new Map()
//     // b["name"] = a["username"];
//     // b["email"] = a["email"];
//     // b["dp"] = a["dp"]; // Display Picture
//     // return b;
//     print("a");
//     set
//     return response.body;
//   } else {
//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   final bool is_logged_in;
//   final String username;
//   final String email;
//   final String dp;

//   const Album({
//     required this.is_logged_in,
//     required this.username,
//     required this.email,
//     required this.dp,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       is_logged_in: json['is_logged_in'],
//       username: json['username'],
//       email: json['email'],
//       dp: json['dp'],
//     );
//   }
// }

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);
  // const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late Future<String> a;
  // String name = "Anonymous";
  // String email = "Anonymous";
  // String dp = "$DOMAIN/static/profile_pictures/anonymous.png"; // Display Picture

  // @override
  // void initState() {
  //   super.initState();
  //   // futureAlbum = fetchAlbum();
  //   fetchAlbum();
  //   // String name = a["name"];
  //   // String email = a["email"];
  //   // String dp = a["dp"]; // Display Picture
  // }

  @override
  Widget build(BuildContext context) {
    print("c");
    // String name = "Aritra Mukhopadhyay";
    // String email = "aritra.mukhopadhyay@niser.ac.in";
    // String dp = "$DOMAIN/static/profile_pictures/anonymous.png"; // Display Picture
    // String name = a["name"];
    // String email = a["email"];
    // String dp = a["dp"]; // Display Picture
    // const dp = "assets/images/dp.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: Column(children: [
          // DrawerHeader(
          //   padding: EdgeInsets.zero,
          //   child: ListTile(
          //     leading: Icon(
          //       CupertinoIcons.house_fill,
          //       color: Colors.white,
          //     ),
          //     // leading: Icon(Image.asset("assets/images/home.png"),)
          //     title: const Text(
          //       'Made With Love By Aritra!',
          //       style: TextStyle(color: Colors.white),
          //       textScaleFactor: 2,
          //     ),
          //     onTap: () {
          //       MyApp.wc?.loadUrl(home);
          //       Navigator.pop(context);
          //       // Navigator.pushNamed(context, MyRoutes.webRoute);
          //     },
          //   ),
          // ),

          // Dashboard

          Expanded(
              child: Column(children: <Widget>[
            SizedBox(height: 50),
            ListTile(
              leading: Icon(
                CupertinoIcons.house_fill,
                color: Colors.white,
              ),
              // leading: Icon(Image.asset("assets/images/home.png"),)
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(home);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.webRoute);
              },
            ),

            // Canteen Menu
            ListTile(
              leading: Icon(
                DrawerIcons.canteen_menu,
                color: Colors.white,
              ),
              title: const Text(
                'Canteen Menu',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(canteen_menu);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.canteen_menu);
              },
            ),

            //Timetable
            ListTile(
              leading: Icon(
                DrawerIcons.timetable,
                color: Colors.white,
              ),
              title: const Text(
                'Timetable',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(timetable);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.webRoute);
              },
            ),

            // Archive
            ListTile(
              leading: Icon(
                DrawerIcons.archive,
                color: Colors.white,
              ),
              title: const Text(
                'Archive',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(arc);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.webRoute);
              },
            ),

            // Listings
            ListTile(
              leading: Icon(
                DrawerIcons.listings,
                color: Colors.white,
              ),
              title: const Text(
                'Listings',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(listings);
                Navigator.pop(context);
              },
            ),

            // Lost and Found
            ListTile(
              leading: Icon(
                CupertinoIcons.square_favorites_fill,
                color: Colors.white,
              ),
              title: const Text(
                'Lost & Found',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(lnf);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.webRoute);
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
              leading: Icon(
                DrawerIcons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings Profile',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.25,
              ),
              onTap: () {
                MyApp.wc?.loadUrl(profile);
                Navigator.pop(context);
                // Navigator.pushNamed(context, MyRoutes.webRoute);
              },
            ),

            const Divider(
              height: 20,
              thickness: 1,
              // indent: 20,
              endIndent: 0,
              color: Colors.black12,
            ),
          ])),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: <Widget>[
                  // Divider(),

                  ListTile(
                      // leading: Icon(Icons.settings),
                      title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Made with ❤️ by Aritra (www.github.com/PeithonKing)',
                      style: TextStyle(color: Colors.white),
                      textScaleFactor: 1.25,
                    ),
                  )),
                  // ListTile(
                  //   leading: Icon(Icons.help),
                  //   title: Text('Instagram')
                  // )
                ],
              )),
        ]),
      ),
    );
  }
}
