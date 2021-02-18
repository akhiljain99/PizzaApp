import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpecialtyPizzaPurchase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
