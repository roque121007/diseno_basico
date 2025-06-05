import 'package:diseno_basico/widgets/background.dart';
import 'package:diseno_basico/widgets/card_table.dart';
import 'package:diseno_basico/widgets/custom_bottom_navigator.dart';
import 'package:diseno_basico/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [Background(), _HomeBody()]),
      bottomNavigationBar: ButtomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [PageTitle(), CardTable()]),
    );
  }
}
