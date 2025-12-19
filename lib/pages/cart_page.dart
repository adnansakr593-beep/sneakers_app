import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart_model.dart';
import 'package:sneakers_shop/models/shoe_model.dart';
import 'package:sneakers_shop/widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>
    (
      builder:( context , value ,child )=> Padding(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text 
            (
              'My Cart',
              style: TextStyle
              (
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 10,),

            Expanded
            (
              child: ListView.builder
              (
                itemCount: value.showUserCart().length ,
                itemBuilder: (context,index)
                {
                  
                  // ignore: unused_local_variable
                  ShoeModel indivaildshoe = value.showUserCart()[index];

                  return CartItem(shoeM: indivaildshoe,);
                }
              ) 
            )
          ],
        ),
      )
    );
  }
}