import 'package:flutter/material.dart';
import 'package:pizza_ordering_app/CreateYourOwn.dart';
import 'package:pizza_ordering_app/SpecialtyPizzas.dart';
import 'package:pizza_ordering_app/SpecialtyPizzaPurchase.dart';
import 'package:pizza_ordering_app/Home.dart';
import 'package:pizza_ordering_app/ShoppingCart.dart';

void main() => runApp(MaterialApp(initialRoute: '/Home', routes: {
      '/Home': (context) => Home(),
      '/CreateYourOwn': (context) => CreateYourOwn(),
      '/SpecialtyPizzasMenu': (context) => SpecialtyPizzasMenu(),
      '/SpecialtyPizzaPurchase': (context) => SpecialtyPizzaPurchase(),
      '/ShoppingCart': (context) => ShoppingCart(),
    }));
