import 'package:flutter/material.dart';

class ButtomNavigator extends StatelessWidget {
  const ButtomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: "Calendar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_outlined),
          label: "Grafica",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: "Usuarios",
        ),
      ],
    );
  }
}
