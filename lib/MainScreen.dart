import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:light_control/control_panel/ControlPanelPage.dart';
import 'package:light_control/room/RoomPage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    RoomPage(),
    ControlPanelPage(),
    RoomPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.lightbulb),
            title: Text("light")
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text("home")
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cogs),
            title: Text("cogs")
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        selectedIconTheme: IconThemeData(color: Theme.of(context).accentColor, size: 35),
      ),
    );
  }
}
