import 'package:bggapp/models/boardgame.dart';
import 'package:flutter/material.dart';

class BoardGameTile extends StatelessWidget {
  void Function()? onTap;
  BoardGame boardGame;
  BoardGameTile({super.key, required this.boardGame, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //boardgame image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 180,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(boardGame.imagePath),
                  fit: BoxFit.contain, // The entire image is visible
                ),
              ),
            ),
          ),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              boardGame.description,
              style: const TextStyle(color: Colors.white),
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      boardGame.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 4),
                    //price
                    Text(
                      boardGame.price + "\$",
                      style: const TextStyle(
                          color: Color(0xFFff5100),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFff5100),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          //add to cart button
        ],
      ),
    );
  }
}
