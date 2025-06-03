import 'package:diseno_basico/screens/basic_design.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      initialRoute: "basic_design",
      routes: {"basic_design": (_) => BasicDesignScreen()},
    );
  }
}
