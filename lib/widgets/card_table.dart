import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icons.border_all,
              text: "Geneal",
            ),
            _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.car_rental,
              text: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purple,
              icon: Icons.shopping_bag,
              text: "Shopping",
            ),
            _SingleCard(
              color: Colors.yellow[800]!,
              icon: Icons.receipt,
              text: "Bills",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.movie,
              text: "Entertainment",
            ),
            _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.local_grocery_store,
              text: "Grosery",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icons.border_all,
              text: "Geneal",
            ),
            _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.car_rental,
              text: "Transport",
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 40,
            child: Icon(icon, size: 40),
          ),
          SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    );
  }
}
