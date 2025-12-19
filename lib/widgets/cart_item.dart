import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart_model.dart';
import 'package:sneakers_shop/models/shoe_model.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  ShoeModel shoeM;
  CartItem({super.key,required this.shoeM});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> 
{
  void deleteItemFromCart()
  {
    Provider.of<CartModel>(context,listen: false).deleteitemForCart(widget.shoeM);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration
      (
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.only(bottom: 15,right: 25),
      child: ListTile
      (
        leading: Image.asset(widget.shoeM.image),
        title: Text(widget.shoeM.name),
        subtitle: Text(widget.shoeM.price),
        trailing: IconButton
        (
          icon: Icon(Icons.delete),
          onPressed: () => deleteItemFromCart() ,
        ),
      ),
    );
  }
}