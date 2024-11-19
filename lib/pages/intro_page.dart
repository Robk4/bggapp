import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3f3a60),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/images/BGG.jpeg',
                    height: 150,
                  ),
                ),

                const SizedBox(height: 40),

                //title
                const Text(
                  "BoardGameGeek",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),

                const SizedBox(height: 20),

                //subtitle
                const Text(
                  "Gaming Unplugged Since 2000",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 60),

                //start button
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/homepage'),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFff5100),
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(22.0),
                    child: const Center(
                      child: Text(
                        "Enter the realm",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
