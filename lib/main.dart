import 'package:bggapp/models/cart.dart';
import 'package:bggapp/pages/home_page.dart';
import 'package:bggapp/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const BGGApp());
}

class BGGApp extends StatelessWidget {
  const BGGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {'/homepage': (context) => const HomePage()},
      ),
    );
  }
}
