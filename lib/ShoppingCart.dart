import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

/*
class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perilous Pizza'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 122, 0, 0),
      ),
      body: Text('ShoppingCart'),
    );
  }
}

*/

class ShoppingCart extends StatefulWidget {
  final List<ShoppingCartItem> shoppingCart;

  ShoppingCart({Key key, this.shoppingCart}) : super(key: key);
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    List<ShoppingCartItem> _shoppingCart =
        widget.shoppingCart != null ? widget.shoppingCart : [];

    return Scaffold(
      appBar: AppBar(
        title: Text('Perilous Pizza'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 122, 0, 0),
      ),
      body: Text('ShoppingCart'),
    );
  }
}
