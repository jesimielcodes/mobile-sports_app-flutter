import 'package:flutter/material.dart';
import 'package:project1/pages/profile_page.dart';
import 'package:project1/pages/arena_page.dart';
import 'package:project1/pages/lockerroom_page.dart';
import 'package:project1/pages/bulletin_page.dart';
import 'package:project1/pages/placeholder_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2;

  final List<Widget> widgetoptions = <Widget>[
    PlaceholderPage(),
    LockerRoomPage(),
    BulletinPage(),
    ArenaPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("PlayBook"),
        centerTitle: true,
      ),
      body: widgetoptions.elementAt(selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.red, blurRadius: 15, spreadRadius: 0),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(color: Colors.red),
              unselectedIconTheme: IconThemeData(color: Colors.black),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.browse_gallery),
                  label: 'Placeholder',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Locker Rooms',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Bulletin',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.stadium),
                  label: 'Arena',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
