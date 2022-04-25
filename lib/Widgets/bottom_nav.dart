import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomanNav extends StatefulWidget {
  const SalomanNav({Key? key}) : super(key: key);

  @override
  _SalomanNavState createState() => _SalomanNavState();
}

class _SalomanNavState extends State<SalomanNav> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) => setState(() => _currentIndex = i),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Color(0xFFFEE590),
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: FaIcon(FontAwesomeIcons.bullseye),
          title: Text("Likes"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: Colors.teal,
        ),
      ],
    );
  }
}
