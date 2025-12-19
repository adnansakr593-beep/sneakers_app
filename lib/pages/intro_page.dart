import 'package:flutter/material.dart';
import 'package:sneakers_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/nike logo.png', height: 275),

              const SizedBox(height: 50),
              const Text(
                'Just Do It',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 50),

              const Text(
                textAlign: TextAlign.center,
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const SizedBox(height: 50),

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context)
                  {
                    return HomePage();
                  } ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Shop now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
