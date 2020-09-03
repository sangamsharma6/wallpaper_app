import 'package:flutter/material.dart';
import 'package:wallpaper_app/FirstScreen.dart';
import 'package:wallpaper_app/SecondScreen.dart';

class BottomAppbar extends StatefulWidget {
  @override
  _BottomAppbarState createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FirstScreen(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme:
              IconThemeData(color: Colors.deepOrange, size: 20.0),
          selectedItemColor: Colors.deepOrange,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          unselectedIconTheme: IconThemeData(color: Colors.grey,size: 18.0),
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.format_paint), title: Text('Wallpapers')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('My Page')),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
