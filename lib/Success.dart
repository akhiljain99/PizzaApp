/// ***********************************************************************
///**NAMES: Cole DeBoer, Mary DeBoer, Jacob Doudna, Akhil Jain          ***
///**CLASS: SE 330                                                      ***
///**ASSIGNMENT: Project 1                                              ***
///**DUE DATE: 3/22/2021                                                ***
///**INSTRUCTOR: Mr. Gamradt                                            ***
///************************************************************************
///**FILE: Success.dart                                                 ***
///************************************************************************
///**DESCRIPTION: Allows the user to see that their order is complete.  ***
///**They will routed to the home page when they click the "Return Home"***
///***button.                                                           ***
///************************************************************************/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
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
            )
          ]),
      body: Column(
        children: <Widget> [
          Center(
            child: Icon(
              Icons.check_box_outlined,
              color: Colors.black,
              size: 300,
            ),
          ),
          Center(
            child: Text(
              'Your order was successfully submitted!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'You will be emailed when your order is complete\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ///Routes user back to the home page
          FlatButton(
            padding: EdgeInsets.all(15),
            color: Color.fromARGB(255, 122, 0, 0),
            onPressed: () {
              print("home as been clicked");
              Navigator.pushNamed(context, '/Home');
            },
            child: Text(
              'Return Home',
              style: TextStyle(
                  fontSize: 30.0, color: Colors.white),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}
