import 'package:flutter/material.dart';
import 'package:motordoc/src/ui/pages/home/home.dart';
import 'package:motordoc/src/ui/pages/home/chat.dart';
import 'package:motordoc/src/ui/pages/home/person.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  final _widgetOptions = <Widget>[
    ChatPage(),
    HomePage(),
    PersonPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _widgetOptions,
        children: widget.screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xFF3688DE),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        iconSize: 24,
        onTap: _onItemTapped,
      ),
    );
  }
}
