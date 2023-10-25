import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cartscreen.dart';
import 'package:flutter_application_1/screens/categoryscreen.dart';

import 'package:flutter_application_1/screens/homepagescreen.dart';
import 'package:flutter_application_1/screens/profilescreen.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    // Define your screens or pages here
    HomePage(),
    category(),
    cartscreen(),
    profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ecommerce App',
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.lightGreenAccent,
        backgroundColor: Color(0xFFccf0dc),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 219, 73, 54),
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
