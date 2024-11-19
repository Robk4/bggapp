import 'package:bggapp/components/boardgame_tile.dart';
import 'package:bggapp/models/boardgame.dart';
import 'package:bggapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // addind the game to the cart
  void addBoardGameToCart(BoardGame boardgame) {
    Provider.of<Cart>(context, listen: false).addItemToCart(boardgame);
    //alert the user
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added!"),
        content: Text("Check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "from Arcs to Zendo we got you covered",
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ),

          //hotrightnow
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks Right Now! 🔥",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFFff5100),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 10),

          //list of board games
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                BoardGame boardGame = value.getBoardGameList()[index];
                return BoardGameTile(
                  boardGame: boardGame,
                  onTap: () => addBoardGameToCart(boardGame),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Divider(
              color: Color(0xFFff5100),
            ),
          )
        ],
      ),
    );
  }
}
