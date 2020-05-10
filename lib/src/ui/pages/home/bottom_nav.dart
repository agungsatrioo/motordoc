import 'package:flutter/material.dart';

import '../../../utils/util_theme.dart';
import '../../../utils/util_user_agent.dart';
import 'chat.dart';
import 'home.dart';
import 'person.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  UserAgent _ua = UserAgent();
  
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  initState() {
    super.initState();
  }

  Widget getPage() {
    switch(_selectedIndex) {
      case 0: return ChatPage();
      case 1: return HomePage(userAgent: _ua,);
      case 2: return PersonPage(userAgent: _ua);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: primary_logo,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        iconSize: 30,
        onTap: _onItemTapped,
      ),
    );
  }
}
