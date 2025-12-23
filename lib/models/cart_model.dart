import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shoe_model.dart';

class CartModel extends ChangeNotifier
{
final List<ShoeModel> shoes = [
  ShoeModel(
    desc: 'Stylish blue Nike Air Jordan with premium comfort and sleek design.',
    name: 'Nike Air Jordan Blue',
    image: 'assets/images/02.png',
    price: '2100',
  ),

  ShoeModel(
    desc: 'Classic white and black Nike sneakers with lightweight cushioning.',
    name: 'Nike Air Jordan Classic',
    image: 'assets/images/03.png',
    price: '1950',
  ),

  ShoeModel(
    desc: 'Matte black Nike sneakers built for performance and street style.',
    name: 'Nike Air Jordan Shadow',
    image: 'assets/images/04.png',
    price: '2300',
  ),

  ShoeModel(
    desc: 'All-black premium Nike Air Jordan crafted with durable leather.',
    name: 'Nike Air Jordan Stealth',
    image: 'assets/images/06.png',
    price: '2200',
  ),

  ShoeModel(
    desc: 'Modern grey Nike Air Jordan for everyday comfort and sporty look.',
    name: 'Nike Air Jordan Phantom',
    image: 'assets/images/07.png',
    price: '2050',
  ),
];


  List <ShoeModel> userCart = [];

  List <ShoeModel> getallshoes()
  {
    return shoes;
  }

  List <ShoeModel> showUserCart()
  {
    return userCart;
  }

  void additemtocart(ShoeModel shoeM)
  {
    userCart.add(shoeM);
    notifyListeners();
  }

  void deleteitemForCart(ShoeModel shoeM)
  {
    userCart.remove(shoeM);
    notifyListeners();
  }

}