import 'package:bggapp/models/boardgame.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of boardgames for sale
  List<BoardGame> boardGameShop = [
    BoardGame(
        name: "Tyrants of the Underdark",
        price: "64.99",
        imagePath: 'lib/images/TOTU.PNG',
        description:
            "Lead a Drow house and build the best deck to establish supremacy over the Underdark."),
    BoardGame(
        name: "HEAT: Pedal to the Metal",
        price: "74.99",
        imagePath: 'lib/images/heat-pedal-to-the-metal.jpg',
        description: "Manage your race car's speed to keep from overheating."),
    BoardGame(
        name: "CATAN",
        price: "43",
        imagePath: 'lib/images/catan.jpg',
        description:
            'Collect and trade resources to build up the island of Catan in this modern classic.'),
    BoardGame(
        name: "SCYTHE",
        price: "95.50",
        imagePath: 'lib/images/scythe.jpg',
        description:
            'Five factions vie for dominance in a war-torn, mech-filled, dieselpunk 1920s Europe.'),
  ];
  //list of items in cart
  List<BoardGame> userCart = [];

  //get list of boardgames for sale
  List<BoardGame> getBoardGameList() {
    return boardGameShop;
  }

  //get cart
  List<BoardGame> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(BoardGame boardGame) {
    userCart.add(boardGame);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(BoardGame boardGame) {
    userCart.remove(boardGame);
    notifyListeners();
  }
}
