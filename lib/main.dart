import 'package:diseno_basico/screens/basic_design.dart';
import 'package:diseno_basico/screens/home_screen.dart';
import 'package:diseno_basico/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Diseños App',
      initialRoute: "home_screen",
      routes: {
        "basic_design": (_) => BasicDesignScreen(),
        "scroll_design": (_) => ScrollDesignScreen(),
        "home_screen": (_) => HomeScreen(),
      },
    );
  }
}
