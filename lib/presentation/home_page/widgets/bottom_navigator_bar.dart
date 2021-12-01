import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
      selectedIconTheme: const IconThemeData(color: Colors.black),
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: '___',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: '',
        ),
      ],
    );
  }
}
