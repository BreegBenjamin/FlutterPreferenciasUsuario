import 'package:flutter/material.dart';

class NavigationBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.bubble_chart), label: 'state'),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize), label: 'data'),
      ],
    );
  }
}
