/// ***********************************************************************
///**NAMES: Cole DeBoer, Mary DeBoer, Jacob Doudna, Akhil Jain          ***
///**CLASS: SE 330                                                      ***
///**ASSIGNMENT: Project 1                                              ***
///**DUE DATE: 3/22/2021                                                ***
///**INSTRUCTOR: Mr. Gamradt                                            ***
///************************************************************************
///**FILE: main.dart                                                    ***
///************************************************************************
///**DESCRIPTION: Allows users to be routed to the correct page.        ***
///************************************************************************/
import 'package:flutter/material.dart';
import 'package:pizza_ordering_app/CreateYourOwn.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
import 'package:pizza_ordering_app/SpecialtyPizzas.dart';
import 'package:pizza_ordering_app/SpecialtyPizzaPurchase.dart';
import 'package:pizza_ordering_app/Home.dart';
import 'package:pizza_ordering_app/ShoppingCart.dart';
import 'package:pizza_ordering_app/Checkout.dart';
import 'package:pizza_ordering_app/Success.dart';

void main() => runApp(StateShoppingCartData(
        child: MaterialApp(initialRoute: '/Home', routes: {
            '/Home': (context) => Home(),
            '/CreateYourOwn': (context) => CreateYourOwn(),
            '/SpecialtyPizzasMenu': (context) => SpecialtyPizzasMenu(),
            '/SpecialtyPizzaPurchase': (context) => SpecialtyPizzaPurchase(),
            '/ShoppingCart': (context) => ShoppingCart(),
            '/Checkout' : (context) => Checkout(),
            '/Success' : (context) => Success(),
    })));
