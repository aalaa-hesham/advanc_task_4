import 'package:advanc_task_4/pages/home.dart';
import 'package:advanc_task_4/pages/shop_cart.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  MasterPage({super.key});
  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    Homepage(),
    Shop(),
    Center(
      child: Text(
        "hi",
        style: TextStyle(
            color: const Color.fromARGB(255, 208, 212, 0),
            fontSize: 200,
            fontWeight: FontWeight.bold),
      ),
    )
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 28, 28),
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        index: _selectedIndex,
        backgroundColor: Color.fromARGB(255, 72, 28, 28),
        color: Colors.brown.shade600,
        animationDuration: Duration(microseconds: 300),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.yellow,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.yellow,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.yellow,
          ),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _selectedIndex = selectedIndex;
          });
        },
      ),
      body: Column(
        children: <Widget>[_pages[_selectedIndex]],
      ),
    );
  }
}
