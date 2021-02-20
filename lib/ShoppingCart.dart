import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
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
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    var _shoppingCart = ShoppingCartData.of(context).getCart();
    return Scaffold(
        appBar: AppBar(
          title: Text('Perilous Pizza'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 122, 0, 0),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _shoppingCart.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Row(
                children: [
                  Center(
                    child: Text(
                      '${_shoppingCart[index]}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  FlatButton(
                      child: Text('Remove Item'),
                      onPressed: () {
                        //get cart items
                        List<ShoppingCartItem> cart =
                            ShoppingCartData.of(context).getCart();

                        //remove item from cart
                        cart.removeAt(index);

                        //update cart items
                        ShoppingCartData.of(context).updateCart(cart);
                        print(_shoppingCart);

                        //remove item from listview
                        setState(() {
                          _shoppingCart =
                              ShoppingCartData.of(context).getCart();
                        });
                      }),
                ],
              ));
            }));
  }
}
