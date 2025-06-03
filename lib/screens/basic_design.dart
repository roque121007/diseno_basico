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
          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              "Veniam minim cillum nisi adipisicing fugiat sunt nisi dolor. Nisi magna proident qui fugiat pariatur nostrud nostrud culpa cupidatat cillum duis voluptate eu. Nostrud consequat commodo ullamco laborum magna velit mollit ad adipisicing eiusmod exercitation. Sint veniam quis sit nisi minim. Et laboris dolor aute ut laborum culpa veniam fugiat aliqua ullamco.",
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButtom(icon: Icons.call, text: "Call"),
          CustomButtom(icon: Icons.navigation, text: "Route"),
          CustomButtom(icon: Icons.share, text: "Share"),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButtom({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
