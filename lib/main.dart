import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './userprofile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './account.dart';
import './cart.dart';
import './search.dart';
import './video.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selcind = 0;
  var l = [
    UserProfile(),
    Search(),
    Reels(),
    Shop(),
    Account(),
  ];

  //var ques = ["akakk"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: l[selcind],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.redAccent,

        //buttonBackgroundColor: Colors.deepOrange[200],
        items: <Widget>[
          Icon(Icons.home, size: 17),
          Icon(Icons.search, size: 17),
          Icon(Icons.post_add, size: 17),
          Icon(Icons.shop, size: 17),
          Icon(Icons.person, size: 17),
        ],
        onTap: (index) {
          setState(() {
            selcind = index;
          });
          //Handle button tapin
          // setState(() {
          //   // selcind =l[];
          // });
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: selcind,
      //     // onTap: _changescreen,
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           //color: Colors.amberAccent,
      //         ),
      //         label: "home",
      //         backgroundColor: Colors.redAccent[200],
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.search,
      //           //color: Colors.orangeAccent,
      //         ),
      //         label: "home",
      //         backgroundColor: Colors.redAccent[200],
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.add_alert_outlined,
      //           // color: Colors.blueAccent,
      //         ),
      //         label: "home",
      //         backgroundColor: Colors.redAccent[200],
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.video_call_outlined,
      //           //color: Colors.lightGreenAccent,
      //         ),
      //         label: "home",
      //         backgroundColor: Colors.redAccent[200],
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_pin_circle,
      //           //color: Colors.lightGreenAccent,
      //         ),
      //         label: "home",
      //         backgroundColor: Colors.redAccent[200],
      //       ),
      //     ]),
    );
  }
}
