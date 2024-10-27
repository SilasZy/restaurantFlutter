import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage() ,);
  }
}