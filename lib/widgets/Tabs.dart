import 'package:flutter/material.dart';

var tabs = (onTabTapped,_currentIndex) =>  BottomNavigationBar(
  onTap: onTabTapped,
  // new
  currentIndex: _currentIndex,
  // new
  backgroundColor: Colors.blueAccent,
  selectedItemColor: Colors.blueAccent,
  unselectedItemColor: Colors.blueAccent,
  items: [
    new BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Icon(Icons.home),
      title: Text(
        'Home',
        style: TextStyle(color: Colors.blueAccent),
      ),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.mail),
      title: Text('Messages'),
    ),
    new BottomNavigationBarItem(
        icon: Icon(Icons.person), title: Text('Profile')),
    new BottomNavigationBarItem(
        icon: Icon(Icons.battery_full), title: Text('Grid')),
    new BottomNavigationBarItem(
        icon: Icon(Icons.camera), title: Text('WebRTC'))
  ],
);
