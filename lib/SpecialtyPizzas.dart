import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/CreateYourOwn.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';
import 'package:pizza_ordering_app/SpecialtyPizzaPurchase.dart';

class SpecialtyPizzasMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Perilous Pizza'),
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
          ]),
      body: Container(
        color: Colors.white,
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0)),
                width: 350.0,
                height: 450.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzaPurchase', arguments: {
                      'pizzaType': "Supreme",
                    });
                  },
                  child: Column(
                    children: <Widget>[ 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'Assets/SupremePizza.jpg',
                                  height: 250.0,
                                  width: 300.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              "Supreme Pizza", textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Text(
                              'Traditionally topped with pepperoni, sausage, bell peppers, onions, and olives, the supreme pizza combines some of the most popular pizza toppings into one delicious slice.', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.25, 1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.25, 1.25),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ) 
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0)),
                width: 350.0,
                height: 415.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzaPurchase', arguments: {
                      'pizzaType': "BBQGoat",
                    });
                  },
                  child: Column(
                    children: <Widget>[ 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'Assets/BarbecueGoat.jpg',
                                  height: 250.0,
                                  width: 300.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              "BBQ Goat", textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Text(
                              'Our original crust topped with Kansas City Barbecue sauce, goat meat, goat cheese, and onions.', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.25, 1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.25, 1.25),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0)),
                width: 350.0,
                height: 415.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzaPurchase', arguments: {
                      'pizzaType': "Sicilian",
                    });
                  },
                  child: Column(
                    children: <Widget>[ 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'Assets/SicilianPizza.jpg',
                                  height: 250.0,
                                  width: 300.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              "Sicilian Pizza", textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Text(
                              'Our fluffy crust topped with tomato sauce, cheese, onions, anchovies, and herbs.', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      // bottomLeft
                                      offset: Offset(-1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // bottomRight
                                      offset: Offset(1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topRight
                                      offset: Offset(1.25, 1.25),
                                      color: Colors.black),
                                  Shadow(
                                      // topLeft
                                      offset: Offset(-1.25, 1.25),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0)),
                width: 350.0,
                height: 415.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzaPurchase', arguments: {
                      'pizzaType': "Hawaiian",
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'Assets/HawaiianPizza.jpg',
                                height: 250.0,
                                width: 300.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              "Hawaiian Pizza", textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Text(
                              'Our original crust topped with tomato sauce, canadian bacon, pineapple, and cheese mix.', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    // bottomLeft
                                      offset: Offset(-1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // bottomRight
                                      offset: Offset(1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // topRight
                                      offset: Offset(1.25, 1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // topLeft
                                      offset: Offset(-1.25, 1.25),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0)),
                width: 350.0,
                height: 415.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzaPurchase', arguments: {
                      'pizzaType': "Masala",
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'Assets/MasalaPizza.jpg',
                                height: 250.0,
                                width: 300.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              "Chicken Tikka Masala Pizza", textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: Colors.black),
                                  Shadow(
                                    // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Text(
                              'Our original crust topped with spicy curry, chicken, onions, mozzarella cheese, and cilantro.', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    // bottomLeft
                                      offset: Offset(-1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // bottomRight
                                      offset: Offset(1.25, -1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // topRight
                                      offset: Offset(1.25, 1.25),
                                      color: Colors.black),
                                  Shadow(
                                    // topLeft
                                      offset: Offset(-1.25, 1.25),
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

