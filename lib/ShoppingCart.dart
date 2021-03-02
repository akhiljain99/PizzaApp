import 'package:flutter/cupertino.dart';
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
  double _price = 0;
  double _tax = 0;
  double _total = 0;
  String _number;
  String _taxStr;
  String _totalStr;
  @override
  Widget build(BuildContext context) {
    var _shoppingCart = ShoppingCartData.of(context).getCart();
    return Scaffold(
        appBar: AppBar(
            title: Text('Shopping Cart'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 122, 0, 0),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.home_rounded, color: Colors.white),
                onPressed: () {
                  print("home as been clicked");
                  Navigator.pushNamed(context, '/Home');
                },
              )
            ]),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: _shoppingCart.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                (() {
                                  _number = _shoppingCart[index].price.toStringAsFixed(2);
                                  _price += _shoppingCart[index].price;
                                  if (_shoppingCart[index].pizzaType ==
                                      PizzaType.createyourown) {
                                    return Container(
                                        decoration: BoxDecoration(
                                            border:
                                            Border.all(color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(16.0)),
                                        width: 350.0,
                                        //height: 450.0,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Column(children: [
                                          Text(
                                            'Create Your Own',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price: \$${_number}",
                                            style: TextStyle(fontSize: 18),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            'Size: ${_shoppingCart[index].size}',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            'Crust: ${_shoppingCart[index].crust}',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            'Toppings: \n${_shoppingCart[index].createYourOwnDetails}',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          FlatButton(
                                            color:
                                            Color.fromARGB(255, 122, 0, 0),
                                            onPressed: () {
                                              //get cart items
                                              _price = _price - _shoppingCart[index].price;
                                              List<ShoppingCartItem> cart =
                                              ShoppingCartData.of(context)
                                                  .getCart();
                                              //remove item from cart
                                              cart.removeAt(index);

                                              //update cart items
                                              ShoppingCartData.of(context)
                                                  .updateCart(cart);
                                              print(_shoppingCart);

                                              //remove item from listview
                                              setState(
                                                    () {
                                                  _shoppingCart =
                                                      ShoppingCartData.of(
                                                          context)
                                                          .getCart();
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Remove Item',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          FlatButton(
                                            color:
                                            Color.fromARGB(255, 122, 0, 0),
                                            onPressed: () {
                                              //do something
                                            },
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ]));
                                  } else {
                                    return Container(
                                        decoration: BoxDecoration(
                                            border:
                                            Border.all(color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(16.0)),
                                        width: 350.0,
                                        //height: 450.0,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Column(children: [
                                          Text(
                                            '${_shoppingCart[index].specialtyType}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Price: \$${_number}',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            'Size: ${_shoppingCart[index].size}\n',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          FlatButton(
                                            color:
                                            Color.fromARGB(255, 122, 0, 0),
                                            onPressed: () {
                                              _price = _price - _shoppingCart[index].price;
                                              //get cart items
                                              List<ShoppingCartItem> cart =
                                              ShoppingCartData.of(context)
                                                  .getCart();
                                              //remove item from cart
                                              cart.removeAt(index);

                                              //update cart items
                                              ShoppingCartData.of(context)
                                                  .updateCart(cart);
                                              print(_shoppingCart);

                                              //remove item from listview
                                              setState(
                                                    () {
                                                  _shoppingCart =
                                                      ShoppingCartData.of(
                                                          context)
                                                          .getCart();
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Remove Item',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          FlatButton(
                                            color:
                                            Color.fromARGB(255, 122, 0, 0),
                                            onPressed: () {
                                              //do something
                                            },
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ]));
                                  }
                                }()),
                              ],
                            ),
                          ],
                        ),
                      );
                    })),
            Row(
              children: [
                _shoppingCart.length <= 0
                    ? Center(
                    child: Text('Cart is Empty',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)))
                    : Center(
                  child: Text(" "),
                ),
              ],
            ),
            Row(
              children: [
                _shoppingCart.length > 0
                    ? FlatButton(
                    padding: EdgeInsets.all(15),
                    color: Color.fromARGB(255, 122, 0, 0),
                    onPressed: () {
                      _tax = _price * 0.07;
                      _total = _price + _tax;
                      _number = _price.toStringAsFixed(2);
                      _taxStr = _tax.toStringAsFixed(2);
                      _totalStr = _total.toStringAsFixed(2);

                      Navigator.pushNamed(
                          context, '/Checkout',
                          arguments: {'price': _number, 'tax': _taxStr, 'total': _totalStr});
                    },
                    child: Text(
                      'Checkout',
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                      textAlign: TextAlign.right,
                    ))
                    : Center(
                  child: Text(" "),
                )
              ],
            )
          ],
        )
    );
  }
}

class ShoppingCartButton extends StatefulWidget {
  @override
  _CheckoutButton createState() => _CheckoutButton();
}

class _CheckoutButton extends State<ShoppingCartButton> {
  @override
  Widget build(BuildContext context) {}
}
