import 'package:first_task_s/Widgets/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomBottomNavigationBar(int selectedIndex, Function(int) onItemTapped) {
  return (BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.amberAccent),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      unselectedItemColor: Colors.red,
    selectedItemColor: Colors.black,
    items:  <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: CustomIcon("home_icon_dark.png"),
        label: 'Home',

      ),
      BottomNavigationBarItem(
        icon: CustomIcon("search_icon.png"),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: CustomIcon("chat_icon.png"),
        label: 'Chats',
      ),
      BottomNavigationBarItem(
        icon: CustomIcon("profile_icon.png"),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: CustomIcon("more_icon.png"),
        label: 'More',
      ),
    ],
    currentIndex: selectedIndex, 
    onTap: onItemTapped,
  ));
}
