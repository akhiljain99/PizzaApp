/// ***********************************************************************
///**NAMES: Cole DeBoer, Mary DeBoer, Jacob Doudna, Akhil Jain          ***
///**CLASS: SE 330                                                      ***
///**ASSIGNMENT: Project 1                                              ***
///**DUE DATE: 3/22/2021                                                ***
///**INSTRUCTOR: Mr. Gamradt                                            ***
///************************************************************************
///**FILE: SpecialtyPizzaPurchase.dart                                  ***
///************************************************************************
///**DESCRIPTION: Allows the user to select the desired size of the     ***
///**pizza they want.  The specialty pizza that was selected will be    ***
///**displayed as well.  The user can add the pizza to the cart, which  ***
///**direct them to the shopping cart.                                  ***
///************************************************************************/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

class SpecialtyPizzaPurchase extends StatefulWidget {
  @override
  _SpecialtyPizzaPurchaseState createState() => _SpecialtyPizzaPurchaseState();
}

class _SpecialtyPizzaPurchaseState extends State<SpecialtyPizzaPurchase> {
  //Declare variables
  int _size = 2;
  String size = 'Medium';
  Map data = {};
  String pizzaName = '';
  String fileName = '';
  
  @override
  Widget build(BuildContext context) {
    ///Allows use of passed in arguments
    data = ModalRoute.of(context).settings.arguments;

    ///Determines which pizza to display
    switch(data.values.first)
    {
      case 'Supreme': pizzaName = data.values.first;
                      fileName = "Assets/SupremePizza.jpg";
      break;
      case 'BBQGoat': pizzaName = data.values.first;
                      fileName = "Assets/BarbecueGoat.jpg";
      break;
      case 'Sicilian': pizzaName = data.values.first;
                      fileName = "Assets/SicilianPizza.jpg";
      break;
      case 'Hawaiian': pizzaName = data.values.first;
                        fileName = "Assets/HawaiianPizza.jpg";
      break;
      case 'Chicken Tikka Masala': pizzaName = data.values.first;
                      fileName = "Assets/MasalaPizza.jpg";
      break;
    }
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
              ///Displays the pizza picture and name
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: 350.0,
                height: 330.0,
                margin: EdgeInsets.symmetric(vertical: 40.0),
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
                              '$fileName',
                              height: 250.0,
                              width: 300.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                       )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 300,
                            child: Text(
                              '$pizzaName', textAlign: TextAlign.center,
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
                  ],)
              ),
              ///Allows user to decide which size they want
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                          },
                        )
                      ),
                    ])
                  )
                ],
              ),
              ///Adds the price, image, and size of pizza to the shopping cart,
              ///routes to shopping cart when button is clicked
              Row(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(100, 40, 100, 20),
                      child: Row(children: [
                        FlatButton(
                          padding: EdgeInsets.all(15),
                          color: Color.fromARGB(255, 122, 0, 0),
                          onPressed: () {
                            ShoppingCartItem item = new ShoppingCartItem();
                            item.pizzaType = PizzaType.specialty;
                            item.specialtyType = pizzaName;

                            //Determines which pizza is selected
                            if(pizzaName == "Supreme") item.imageName = "Assets/SupremePizza.jpg";
                            else if(pizzaName == "BBQGoat") item.imageName = "Assets/BarbecueGoat.jpg";
                            else if(pizzaName == "Sicilian") item.imageName = "Assets/SicilianPizza.jpg";
                            else if(pizzaName == "Hawaiian") item.imageName = "Assets/HawaiianPizza.jpg";
                            else if(pizzaName == "Chicken Tikka Masala") item.imageName = "Assets/MasalaPizza.jpg";

                            //Determine the price
                            if(_size == 1) {
                              item.size = 'Small';
                              item.price = 14.00;
                            }
                            else if(_size == 2) {
                              item.size = 'Medium';
                              item.price = 15.00;
                            }
                            else {
                              item.size = 'Large';
                              item.price = 16.00;
                            }
                            ShoppingCartData.of(context).addCartItem(item);
                            Navigator.pushNamed(context, '/ShoppingCart');
                          },
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              fontSize: 30.0, 
                              color: Colors.white
                            ),
                            textAlign: TextAlign.right,
                          )
                        )
                      ],)
                    )
                  )
                ],
              )
            ],
          )
        )
      )
    );
  }
}
