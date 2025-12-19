import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart_model.dart';
import 'package:sneakers_shop/pages/intro_page.dart';

void main()
{
  runApp(SneakersApp());
}

class SneakersApp extends StatelessWidget {
  const SneakersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      builder: (context, child) => MaterialApp
      (
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}