import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCart.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

class Checkout extends StatefulWidget {
  @override
  _Checkout createState() => _Checkout();
}

class _Checkout extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 122, 0, 0),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home_rounded, color: Colors.white),
            onPressed: () {
              print("home as been clicked");
              Navigator.pushNamed(context, '/Home');
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_rounded, color: Colors.white),
            onPressed: () {
              //do something
              print("shopping cart has been clicked");
              Navigator.pushNamed(context, '/ShoppingCart');
            },
          )
        ]
      ),
    );
    throw UnimplementedError();
  }
}