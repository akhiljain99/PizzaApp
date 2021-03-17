/// ***********************************************************************
///**NAMES: Cole DeBoer, Mary DeBoer, Jacob Doudna, Akhil Jain          ***
///**CLASS: SE 330                                                      ***
///**ASSIGNMENT: Project 1                                              ***
///**DUE DATE: 3/22/2021                                                ***
///**INSTRUCTOR: Mr. Gamradt                                            ***
///************************************************************************
///**FILE: Home.dart                                                    ***
///************************************************************************
///**DESCRIPTION: The home page styling and format are displayed to the ***
///**user.  The user will be able to navigate to the shopping cart or   ***
///**decide if they would like to order a specialty pizza or create     ***
///**their own.  They will be routed to the according pages.            ***
///************************************************************************/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ShoppingCartItem> _shoppingCart = [];

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
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('Assets/appBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '\nBuy \$50 of Pizza and get 15% off!',
                  style: TextStyle(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                  )
              ),
              ///Bring the user to the Specialty Pizza page when clicked
              Container(
                margin: EdgeInsets.symmetric(vertical: 40.0),
                child: FlatButton(
                  onPressed: () {
                    print('Specialty Pizzas has been clicked');
                    Navigator.pushNamed(context, '/SpecialtyPizzasMenu');
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'Assets/SpecialtyPizzas.jpg',
                            height: 250.0,
                            width: 300.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 240,
                        width: 300,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Specialty Pizzas',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 35,
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
                ),
              ),
              ///Bring the user to the Create Your Own page when clicked
              Container(
                child: FlatButton(
                  onPressed: () {
                    print('Create your own has been clicked');
                    Navigator.pushNamed(context, '/CreateYourOwn');
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'Assets/BuildYourOwn.jpg',
                            height: 250.0,
                            width: 300.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 240,
                        width: 300,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Create Your Own',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 35,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
