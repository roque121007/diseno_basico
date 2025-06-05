import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color.fromRGBO(255, 122, 234, 206),
        Color.fromARGB(255, 69, 190, 214),
      ],
    ),
  );

  ScrollDesignScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 69, 190, 214),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text("11°", style: textStyle),
          Text("Miercoles", style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 150),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 69, 190, 214),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 69, 190, 214),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(backgroundColor: Color(0xff5098FA)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Bienvenido",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
