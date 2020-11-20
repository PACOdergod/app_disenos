import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  static final String routName = 'home';
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
                _botones(context),
              ],
            ),
          )
        ],
      ),
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

  Widget _botones(
    BuildContext context,
  ) {
    return Table(
      children: [
        TableRow(children: [
          _crearBoton(
              context, 'Pagina basica', Icons.access_alarm, Colors.blue),
          _crearBoton(
              context, 'Pagina Scroll', Icons.accessibility, Colors.purple),
        ]),
        TableRow(children: [
          _crearBoton(context, 'Copo', Icons.ac_unit, Colors.blue[200]),
          _crearBoton(context, 'Amigo', Icons.account_box, Colors.orange),
        ]),
        TableRow(children: [
          _crearBoton(context, 'Android', Icons.adb, Colors.green),
          _crearBoton(
              context, 'Foto', Icons.add_photo_alternate, Colors.yellow),
        ]),
      ],
    );
  }

  Widget _crearBoton(context, String texto, IconData icono, Color color) {
    List<String> textos = ['Pagina basica', 'Pagina Scroll'];

    return GestureDetector(
        onTap: () {
          if (textos.contains(texto)) {
            Navigator.pushNamed(context, texto);
          } else {
            final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

            Scaffold.of(context).showSnackBar(snackBar);
          }
        },
        child: _contenidoBotones(texto, icono, color));
  }

  Widget _contenidoBotones(String texto, IconData icono, Color color) {
    return Container(
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
    );
  }
}
