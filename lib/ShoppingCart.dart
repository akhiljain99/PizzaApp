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
  double _createYourOwnPrice = 0;
  double _specialtyPizzaPrice = 0;
  bool _specialtyRemove = false;
  bool _createYourOwnRemove = false;
  bool remove = false;
  bool onChange = false;
  double _tax = 0;
  double _total = 0;
  String _number;
  String _taxStr;
  String _totalStr;
  int quantity = 1;
  int createYourOwnQuantity = 1;
  String _quantity;
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
                                  if(_shoppingCart[index].pizzaType == PizzaType.createyourown) _createYourOwnPrice = _shoppingCart[index].price;
                                  else _specialtyPizzaPrice = _shoppingCart[index].price;
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
                                                      _createYourOwnRemove = true;
                                                      remove = true;
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
                                          Container(
                                            width: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)
                                            ),
                                            margin: EdgeInsets.fromLTRB(30, 5, 0, 5),
                                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              value: _shoppingCart[index].quantity,
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("1"),
                                                  value: 1, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("2"),
                                                  value: 2, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("3"),
                                                  value: 3, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("4"),
                                                  value: 4, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("5"),
                                                  value: 5, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("6"),
                                                  value: 6, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("7"),
                                                  value: 7, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("8"),
                                                  value: 8, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("9"),
                                                  value: 9, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("10"),
                                                  value: 10, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("11"),
                                                  value: 11, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("12"),
                                                  value: 12, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("13"),
                                                  value: 13, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("14"),
                                                  value: 14, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("15"),
                                                  value: 15, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("16"),
                                                  value: 16, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("17"),
                                                  value: 17, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("18"),
                                                  value: 18, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("19"),
                                                  value: 19, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("20"),
                                                  value: 20, 
                                                ),
                                              ],
                                              onChanged: (value) {
                                                setState(() {
                                                  onChange = true;
                                                  _shoppingCart[index].quantity = value;
                                                });
                                              },
                                            )
                                          )
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
                                          FlatButton( // FlatButton for the remove button
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
                                              setState((){
                                                  remove = true;
                                                  _shoppingCart = ShoppingCartData.of(context).getCart();
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
                                          Container(
                                            width: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)
                                            ),
                                            margin: EdgeInsets.fromLTRB(30, 5, 0, 5),
                                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                            child: DropdownButton(
                                              isExpanded: true,
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                color: Colors.black,
                                              ),
                                              value: _shoppingCart[index].quantity,
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("1"),
                                                  value: 1, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("2"),
                                                  value: 2, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("3"),
                                                  value: 3, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("4"),
                                                  value: 4, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("5"),
                                                  value: 5, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("6"),
                                                  value: 6, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("7"),
                                                  value: 7, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("8"),
                                                  value: 8, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("9"),
                                                  value: 9, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("10"),
                                                  value: 10, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("11"),
                                                  value: 11, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("12"),
                                                  value: 12, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("13"),
                                                  value: 13, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("14"),
                                                  value: 14, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("15"),
                                                  value: 15, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("16"),
                                                  value: 16, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("17"),
                                                  value: 17, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("18"),
                                                  value: 18, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("19"),
                                                  value: 19, 
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("20"),
                                                  value: 20, 
                                                ),
                                              ],
                                              onChanged: (value) {
                                                setState(() {
                                                  onChange = true;
                                                  _shoppingCart[index].quantity = value;
                                                });
                                              },
                                            )
                                          )
                                        ]));
                                  }
                                }()),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  )
                ),
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
                        List<ShoppingCartItem> cart = ShoppingCartData.of(context)
                                                  .getCart();
                        for(var item in cart)
                        {
                          // if the user removes an item from the list, set price to 0, since the prize accumulates. 
                          // set the boolean to false
                          if(remove) {
                            _price = 0;
                            remove = false;
                          }
                          // if the user decides to change the quantity of an item, set the price to 0 for re-calculation. 
                          if(onChange){
                            _price = 0;
                            onChange = false;
                          }
                          _price += item.price * item.quantity;
                        }
                        // calculate the tax and the total. 
                        _tax = _price * 0.07;
                        _total = _price + _tax;
                        var _number = _price.toStringAsFixed(2);
                        var _taxStr = _tax.toStringAsFixed(2);
                        var _totalStr = _total.toStringAsFixed(2);
                        Navigator.pushNamed(
                            context, '/Checkout',
                            arguments: {'price': _number, 'tax': _taxStr, 'total': _totalStr},
                          );
                      },
                      child: Text(
                        'Checkout',
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                        textAlign: TextAlign.center,
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
