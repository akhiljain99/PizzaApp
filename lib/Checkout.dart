import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Checkout extends StatefulWidget {
  @override
  _Checkout createState() => _Checkout();
}

enum Pay { cash, credit }

class _Checkout extends State<Checkout> {
  Map data = {};
  bool _fName = false;
  bool _lName = false;
  bool _email = false;
  bool _phone = false;
  bool _cardName = false;
  bool _cardNum = false;
  bool _expYear = false;
  bool _cvv = false;
  bool _zip = false;
  Pay _payType = Pay.cash;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
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
        ]
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Center(
                child: Text(
                    '\nContact Information',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                )
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:TextField(
                  obscureText: false,
                  onChanged: (text){
                    _fName = true;
                  },
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter First Name',
                  ),
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: false,
                    onChanged: (text){
                      _lName = true;
                    },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Enter Last Name',
                  ),
                    style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black
                )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                  child:TextField(
                    obscureText: false,
                      onChanged: (text){
                        _email = true;
                      },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                      hintText: 'you@example.com',
                    ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black
                      )
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: false,
                    onChanged: (text){
                      _phone = true;
                    },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    hintText: '(xxx) xxx-xxxx)',
                  ),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black
                    )
                ),
              ),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              Center(
                  child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )
                  )
              ),
              Row(children: [
                Container(
                  margin: EdgeInsets.fromLTRB(90, 5, 0, 5),
                  padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: Radio(
                      groupValue: _payType,
                      value: Pay.cash,
                      onChanged: (value) {
                        setState(() {
                          _payType = value;
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Row(children: [
                    Container(
                      child: Text(
                        'Cash',
                        style: TextStyle(fontSize: 20.0),
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
                      groupValue: _payType,
                      value: Pay.credit,
                      onChanged: (value) {
                        setState(() {
                          _payType = value;
                        });
                      }),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Row(children: [
                    Container(
                      child: Text(
                        'Credit Card',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ]),
                ),
              ]),
              Row(
                children: <Widget>[
                  _payType == Pay.credit
                  ? Column(
                    children: <Widget> [
                      Container(
                          width: 390.0,
                          padding: EdgeInsets.all(10),
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Name on Card',
                              ),
                              onChanged: (text){
                                _cardName = true;
                              },
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black
                              )
                          )
                      ),
                      Container(
                          width: 390.0,
                          padding: EdgeInsets.all(10),
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Card Number',
                              ),
                              onChanged: (text){
                                _cardNum = true;
                              },
                              maxLength: 16,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black
                              )
                          )
                      ),
                      Row(children: <Widget> [Container(
                          width: 125.0,
                          padding: EdgeInsets.all(10),
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Exp year',
                              ),
                              onChanged: (text){
                                _expYear = true;
                              },
                              maxLength: 4,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black
                              )
                          )
                      ),
                        Container(
                            width: 125.0,
                            padding: EdgeInsets.all(10),
                            child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'CVV',
                                ),
                                onChanged: (text){
                                  _cvv = true;
                                },
                                maxLength: 3,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black
                                )
                            )
                        ),
                        Container(
                            width: 125.0,
                            padding: EdgeInsets.all(10),
                            child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Zip code',
                                ),
                                onChanged: (text){
                                  _zip = true;
                                },
                                maxLength: 5,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black
                                )
                            )
                        )],),

                    ],
                  ) : Center(
                    child: Text("")
                  )
                ],
              ),
              Column(
                children: [
                  data['discount'] == 'true'
                      ? Column(
                      children: <Widget>[
                        Text(
                          'Discount Added!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)
                        ),
                        Text(
                            'Before Discount: \$${data['beforeDiscount']}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                      ]
                  )
                      : Text(" ")
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'SUBTOTAL \t\$${data['price']}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Text(
                      'TAX \t\$${data['tax']}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Text(
                      'TOTAL \t\$${data['total']}\n',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
              ),
              FlatButton(
                padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 122, 0, 0),
                  onPressed: (){
                    if(_fName == true && _lName == true && _email == true && _phone == true){
                      if (_payType == Pay.credit){
                        if (_cardName == true && _cardNum == true && _expYear == true && _cvv == true && _zip == true){
                          Navigator.pushNamed(context, '/Success');
                          print("success has been clicked");
                        }
                        else{
                          Text(
                            'Please fill in all boxes',
                            style: TextStyle(
                                fontSize: 30.0, color: Colors.black),
                            textAlign: TextAlign.right,
                          );
                        }
                      }
                      Navigator.pushNamed(context, '/Success');
                      print("success has been clicked");
                    }
                    else{
                      Text(
                        'Please fill in all boxes',
                        style: TextStyle(
                            fontSize: 30.0, color: Colors.black),
                        textAlign: TextAlign.right,
                      );
                    }
                    },
                child: Text(
                  'Place My Order',
                  style: TextStyle(
                      fontSize: 30.0, color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          )
      )
    );
  }
}