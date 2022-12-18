const String DOMAIN = "http://10.0.2.25:8000";
const String canteen_menu = "https://www.niser.ac.in/hostels/canteenmenu/";
const String timetable = "https://sdgniser.github.io/timetable/";
const String login = DOMAIN + "/login";
const String home = DOMAIN + "/";
const String arc = DOMAIN + "/arc";
const String listings = DOMAIN + "/listings";
const String lnf = DOMAIN + "/lnf";
const String profile = DOMAIN + "/profile";



// Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         drawer: Drawer(
//           child: Container(
//             decoration: BoxDecoration(color: Color(0xFF0098c2)),
//             child: Column(
//               children: <Widget>[
//                 Expanded(
//                   child: Column(children: <Widget>[
//                     ListTile(
//                       title: Text(
//                         'Dealer',
//                         style: TextStyle(fontSize: 18.0, color: Colors.white),
//                       ),
//                       leading: Icon(
//                         Icons.person,
//                         size: 20.0,
//                         color: Colors.white,
//                       ),
//                       onTap: () {
//                         /* Navigator.pop(context);
//                       Navigator.of(context).push(new MaterialPageRoute(
//                           builder: (context) => dealerBuilder()));*/
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         'Shuffler',
//                         style: TextStyle(fontSize: 18.0, color: Colors.white),
//                       ),
//                       leading: Icon(
//                         Icons.shuffle,
//                         size: 20.0,
//                         color: Colors.white,
//                       ),
//                       onTap: () {
//                         /*Navigator.pop(context);
//                       Navigator.of(context).push(new MaterialPageRoute(
//                           builder: (context) => shufflerBuilder()));*/
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         'Mistakes',
//                         style: TextStyle(fontSize: 18.0, color: Colors.white),
//                       ),
//                       leading: Icon(
//                         Icons.info_outline,
//                         size: 20.0,
//                         color: Colors.white,
//                       ),
//                       onTap: () {
//                         /* Navigator.pop(context);
//                       Navigator.of(context).push(new MaterialPageRoute(
//                           builder: (context) => mistakePage()));*/
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         'Important links',
//                         style: TextStyle(fontSize: 18.0, color: Colors.white),
//                       ),
//                       leading: Icon(
//                         Icons.border_color,
//                         size: 20.0,
//                         color: Colors.white,
//                       ),
//                       onTap: () {
//                         /*Navigator.of(context).push(new MaterialPageRoute(
//                           builder: (context) => importantLinks()));*/
//                       },
//                     ),
//                   ]),
//                 ),
//                 Container(
//                     child: Align(
//                         alignment: FractionalOffset.bottomCenter,
//                         child: Column(
//                           children: <Widget>[
//                             Divider(),
//                             ListTile(
//                                 leading: Icon(Icons.settings),
//                                 title: Text('Facebook')),
//                             ListTile(
//                                 leading: Icon(Icons.help),
//                                 title: Text('Instagram'))
//                           ],
//                         ))),
//               ],
//             ),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }