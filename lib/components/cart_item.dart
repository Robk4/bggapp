import 'package:bggapp/models/boardgame.dart';
import 'package:bggapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  BoardGame boardGame;
  CartItem({
    super.key,
    required this.boardGame,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //removes the items from cart
  void removeItem() {
    Provider.of<Cart>(context, listen: false)
        .removeItemFromCart(widget.boardGame);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFff5100),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.boardGame.imagePath),
        title: Text(
          widget.boardGame.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.boardGame.price + "\$",
          style: const TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          onPressed: removeItem,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
