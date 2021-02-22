import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  
  Map data = {};
  
  @override
  Widget build(BuildContext context) {
    String pizzaName = '';
    data = ModalRoute.of(context).settings.arguments;

    switch(data.values.first)
    {
      case 'Supreme': pizzaName = data.values.first;
      break;
      case 'BBQGoat': pizzaName = data.values.first;
      break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Perilous Pizza'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 122, 0, 0),
      ),
      body: Text('Specialty Pizza Purchase'),
    );
  }
}
