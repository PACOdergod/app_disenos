import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          _titulo(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bubble_chart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
      ]),
    );
  }

  Widget _fondo() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 0.9),
        Color.fromRGBO(35, 37, 57, 0.9)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );

    final rosa = Transform.rotate(
      angle: -pi / 4,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            gradient:
                LinearGradient(colors: [Colors.pink[300], Colors.pink[100]])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: rosa,
          top: -60,
          left: -50,
        )
      ],
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Classify this transaction into a particle category',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _navigation() {}
}
