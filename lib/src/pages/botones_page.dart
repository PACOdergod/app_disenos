import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondo(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulo(),
                  _botones(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _navigation(context));
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
        ),
        Positioned(
          child: rosa,
          top: 400,
          left: 50,
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

  Widget _navigation(context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.indigo[300],
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bubble_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
        ]));
  }

  Widget _botones() {
    return Table(
      children: [
        TableRow(children: [
          _crearBoton('Alarma', Icons.access_alarm, Colors.blue),
          _crearBoton('Hola', Icons.accessibility, Colors.purple),
        ]),
        TableRow(children: [
          _crearBoton('Copo', Icons.ac_unit, Colors.blue[200]),
          _crearBoton('Amigo', Icons.account_box, Colors.orange),
        ]),
        TableRow(children: [
          _crearBoton('Android', Icons.adb, Colors.green),
          _crearBoton('Foto', Icons.add_photo_alternate, Colors.yellow),
        ]),
      ],
    );
  }

  Widget _crearBoton(String texto, IconData icono, Color color) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: Icon(
                  icono,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
