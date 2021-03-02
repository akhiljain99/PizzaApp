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
              'Your order was successfully submitted!\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
