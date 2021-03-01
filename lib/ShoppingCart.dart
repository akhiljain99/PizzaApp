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
        body: //Column(
          //children: <Widget>[
            _shoppingCart.length > 0
            ? ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _shoppingCart.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Column(
                    children: <Widget>[
                      ((){
                          if (_shoppingCart[index].pizzaType == PizzaType.createyourown){
                            return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(8.0)),
                                width: 350.0,
                                //height: 450.0,
                                margin: EdgeInsets.symmetric(vertical: 40.0),
                                child: Column(
                                    children: [
                                      Text(
                                        'Create Your Own',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Price: \$${_shoppingCart[index].price}",
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
                                        color: Color.fromARGB(255, 122, 0, 0),
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
                                          },);
                                        },
                                        child: Text(
                                          'Remove Item',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      FlatButton(
                                        color: Color.fromARGB(255, 122, 0, 0),
                                        onPressed: () {
                                          //do something
                                        },
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ]));
                          }
                          else {
                            return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(8.0)),
                                width: 350.0,
                                //height: 450.0,
                                margin: EdgeInsets.symmetric(vertical: 40.0),
                                child: Column(
                                    children: [
                                      Text(
                                        '${_shoppingCart[index].specialtyType}',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Price: \$${_shoppingCart[index].price}',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        'Size: ${_shoppingCart[index].size}\n',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      FlatButton(
                                        color: Color.fromARGB(255, 122, 0, 0),
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
                                          },);
                                        },
                                        child: Text(
                                          'Remove Item',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      FlatButton(
                                        color: Color.fromARGB(255, 122, 0, 0),
                                        onPressed: () {
                                          //do something
                                        },
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ]));
                          }
                      }()),

                ],
              ),
              );
            }
        ) : Center(
          child: Text(
              'Cart is empty',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
          ),),
        ),
            /*Text(
              'This will be a button',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),*///])
    );
  }
}

class ShoppingCartButton extends StatefulWidget {
  @override
  _CheckoutButton createState() => _CheckoutButton();
}

class _CheckoutButton extends State<ShoppingCartButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'This will be a button',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )
    );
  }
}