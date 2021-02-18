import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CreateYourOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Perilous Pizza'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 122, 0, 0),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart_rounded, color: Colors.white),
              onPressed: () {
                //do something
                print("shopping cart has been clicked");
                Navigator.pushNamed(context, '/ShoppingCart');
              },
            )
          ]),
      body: Text('Create Your Own!'),
    );
  }
}
