import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/istockphoto-1097050568-612x612.jpg")),
          Title(),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "kandersteg, Switzerland",
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text("41"),
        ],
      ),
    );
  }
}
