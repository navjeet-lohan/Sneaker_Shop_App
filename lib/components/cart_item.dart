import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';
class CartItem extends StatefulWidget {
  CartItem({super.key, required this.shoe,});
Shoe shoe;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemsFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      borderRadius: BorderRadius.circular(18)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading : Image.asset(widget.shoe.imagePath,),
        title : Text(widget.shoe.name),
        subtitle: Text('\₹'+widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,),
      ),
    );
  }
}
