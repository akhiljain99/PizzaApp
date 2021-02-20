import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCart.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

class CreateYourOwn extends StatefulWidget {
  final List<ShoppingCartItem> shoppingCart;
  CreateYourOwn({Key key, this.shoppingCart}) : super(key: key);

  @override
  _CreateYourOwnState createState() => _CreateYourOwnState();
}

enum Cheese { normal, extra, extreme }

class _CreateYourOwnState extends State<CreateYourOwn> {
  int _size = 2;
  int _crust = 1;
  bool _pepperoni = false;
  bool _sausage = false;
  bool _mushrooms = false;
  bool _olives = false;
  bool _peppers = false;
  Cheese _cheese = Cheese.normal;

  @override
  Widget build(BuildContext context) {
    List<ShoppingCartItem> _shoppingCart =
        widget.shoppingCart != null ? widget.shoppingCart : [];

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
        body: Container(
            color: Colors.white,
            constraints: BoxConstraints.expand(),
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Choose Your Crust',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 122, 0, 0)),
                              textAlign: TextAlign.center,
                            )),
                        ////////////////////////////////////////
                        ///This row is for the size dropdown button
                        ////////////////////////////////////////
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Size',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  margin: EdgeInsets.fromLTRB(30, 5, 0, 5),
                                  padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: DropdownButton(
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      ),
                                      value: _size,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text("Small"),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Medium"),
                                          value: 2,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Large"),
                                          value: 3,
                                        ),
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          _size = value;
                                        });
                                      })),
                            ]),
                          ),
                        ]),
                        /////////////////////////////////////////////
                        ///This row is for the crust dropdown button
                        /////////////////////////////////////////////
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Crust',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                                  padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: DropdownButton(
                                      isExpanded: true,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      ),
                                      value: _crust,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text("New York Style"),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Chicago Style"),
                                          value: 2,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Flatbread"),
                                          value: 3,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Gluten-Free"),
                                          value: 4,
                                        ),
                                        DropdownMenuItem(
                                          child: Text("Vegan-Friendly"),
                                          value: 5,
                                        ),
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          _crust = value;
                                        });
                                      })),
                            ]),
                          ),
                        ]),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                                child: Text(
                                  'Choose Your Toppings',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 122, 0, 0)),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Checkbox(
                                value: _pepperoni,
                                onChanged: (value) {
                                  setState(() {
                                    _pepperoni = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Pepperoni',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Checkbox(
                                value: _sausage,
                                onChanged: (value) {
                                  setState(() {
                                    _sausage = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Sausage',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Checkbox(
                                value: _mushrooms,
                                onChanged: (value) {
                                  setState(() {
                                    _mushrooms = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Mushrooms',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Checkbox(
                                value: _olives,
                                onChanged: (value) {
                                  setState(() {
                                    _olives = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Olives',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Checkbox(
                                value: _peppers,
                                onChanged: (value) {
                                  setState(() {
                                    _peppers = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Peppers',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                                child: Text(
                                  'How Much Cheese?',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 122, 0, 0)),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Radio(
                                groupValue: _cheese,
                                value: Cheese.normal,
                                onChanged: (value) {
                                  setState(() {
                                    _cheese = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Normal',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Radio(
                                groupValue: _cheese,
                                value: Cheese.extra,
                                onChanged: (value) {
                                  setState(() {
                                    _cheese = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Extra',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Radio(
                                groupValue: _cheese,
                                value: Cheese.extreme,
                                onChanged: (value) {
                                  setState(() {
                                    _cheese = value;
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                child: Text(
                                  'Extreme',
                                  style: TextStyle(fontSize: 30.0),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ]),
                          ),
                        ]),
                        Row(children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(100, 40, 100, 20),
                              child: Row(children: [
                                FlatButton(
                                  padding: EdgeInsets.all(15),
                                  color: Color.fromARGB(255, 122, 0, 0),
                                  onPressed: () {
                                    //TODO: figure out how to route
                                    //all data to the shopping cart
                                    print('Item added to cart!');

                                    ShoppingCartItem test =
                                        new ShoppingCartItem();
                                    test.pizzaType = PizzaType.specialty;
                                    _shoppingCart.add(test);

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ShoppingCart(
                                                shoppingCart: _shoppingCart)));
                                  },
                                  child: Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.white),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ]),
                      ],
                    ))
              ],
            ))));
  }
}

class SpecialtyPizza extends StatefulWidget {
  @override
  _SpecialtyPizzaState createState() => _SpecialtyPizzaState();
}

class _SpecialtyPizzaState extends State<SpecialtyPizza> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
