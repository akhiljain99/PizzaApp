import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizza_ordering_app/ShoppingCartData.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

// class SpecialtyPizzaPurchase extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Perilous Pizza'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 122, 0, 0),
//       ),
//       body: Text('Specialty Pizza Purchase'),
//     );
//   }
// }


class SpecialtyPizzaPurchase extends StatefulWidget {
  @override
  _SpecialtyPizzaPurchaseState createState() => _SpecialtyPizzaPurchaseState();
}

class _SpecialtyPizzaPurchaseState extends State<SpecialtyPizzaPurchase> {
  int _size = 2;
  String size = 'Medium';
  Map data = {};
  String pizzaName = '';
  String fileName = '';
  ShoppingCartItem item = new ShoppingCartItem();
  
  @override
  Widget build(BuildContext context) {
    
    data = ModalRoute.of(context).settings.arguments;

    switch(data.values.first)
    {
      case 'Supreme': pizzaName = data.values.first + " Pizza";
                      fileName = "Assets/SupremePizza.jpg";
      break;
      case 'BBQGoat': pizzaName = data.values.first;
                      fileName = "Assets/BarbecueGoat.jpg";
      break;
    }
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
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
                              if(_size == 1) item.size = 'Small';
                              else if(_size == 2) item.size = 'Medium';
                              else item.size = 'Large';
                            });
                          },
                        )
                      ),
                    ])
                  )
                ],
              ),
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
                            item.specialtyType = pizzaName;
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
