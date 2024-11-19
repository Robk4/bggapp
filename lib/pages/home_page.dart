import 'package:bggapp/components/bottom_nav.dart';
import 'package:bggapp/pages/cart_page.dart';
import 'package:bggapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Index is to control the bottom bar
  int _selectedIndex = 0;

  //Method that updates the index when the user  taps the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Displaying the pages

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3f3a60),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        title: const Text(
          "BGG",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            color: const Color(0xFFff5100),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF3f3a60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset('lib/images/BGG.jpeg'),
                ),
                //pages
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Color(0xFFff5100)),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.search, color: Color(0xFFff5100)),
                    title: Text(
                      "Browse",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.forum, color: Color(0xFFff5100)),
                    title: Text(
                      "Forums",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag, color: Color(0xFFff5100)),
                    title: Text(
                      "Shopping",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.people, color: Color(0xFFff5100)),
                    title: Text(
                      "Community",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.help, color: Color(0xFFff5100)),
                    title: Text(
                      "Help",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 20),
              child: ListTile(
                leading: Icon(Icons.logout, color: Color(0xFFff5100)),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
