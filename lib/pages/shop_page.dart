import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart_model.dart';
import 'package:sneakers_shop/models/shoe_model.dart';
import 'package:sneakers_shop/widgets/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(ShoeModel shoeM) {
    Provider.of<CartModel>(context, listen: false).additemtocart(shoeM);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Successfully added!'),
        content: const Text('Check your cart.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Search', style: TextStyle(color: Colors.grey)),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              'Everyone flies, but some fly higher.',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Hot picks 🔥',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.getallshoes().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ShoeModel shoevi = value.getallshoes()[index];
                return ShoeTile(shoeM: shoevi, ontap: () => addToCart(shoevi));
              },
            ),
          ),
        ],
      ),
    );
  }
}
