import 'package:bggapp/pages/home_page.dart';
import 'package:bggapp/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BGGApp());
}

class BGGApp extends StatelessWidget {
  const BGGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {'/homepage': (context) => HomePage()},
    );
  }
}
