import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:graduationp/screens/Addpost.dart';
import 'package:graduationp/screens/Home.dart';
import 'package:graduationp/screens/Porfile.dart';
import 'package:graduationp/screens/categories.dart';
import 'package:graduationp/screens/notfications.dart';

class Bottomnavbar extends StatefulWidget {
  static const routeName = "/bottomnavbar";
  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int pageindex = 0;

  final Addpost _addpost = Addpost();
  final Categories _categories = Categories();
  final Porfile _porfile = Porfile();
  final Home _myHomePage = Home();
  final Notofication _notofication = Notofication();
  Widget _showpage = Home();

  Widget pagechosser(int page) {
    switch (page) {
      case 0:
        return _myHomePage;
        break;
      case 1:
        return _notofication;
        break;

      case 2:
        return _addpost;
        break;
      case 3:
        return _categories;
        break;
      case 4:
        return _porfile;
        break;
      default:
        return Container(
          child: Text('no pages'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),

        color: Colors.white,
        // buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        height: 50,
        backgroundColor: Colors.blue[800],

        index: pageindex,

        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.add_box_rounded,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.category,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Colors.black,
          ),
        ],
        onTap: (int tappedindex) {
          setState(() {
            _showpage = pagechosser(tappedindex);
          });

          //Handle button tap
        },
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: _showpage,
      ),
    );
  }
}
