import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  static final String routName = 'basicoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _imagen(),
            _descipcion(),
            _acciones(),
            _texto(),
            _texto(),
          ],
        ),
      ),
    );
  }

  Widget _imagen() {
    return Image(
        image: NetworkImage(
            'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg'));
  }

  Widget _descipcion() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lago de montaña',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Un lago en Europa para acampar',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red,
                size: 30,
              ),
              Text(
                '75',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _acciones() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion(Icons.call, 'CALL'),
          _accion(Icons.near_me, 'ROUTE'),
          _accion(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _accion(IconData icono, String texto) {
    return Container(
      child: Column(
        children: [
          Icon(
            icono,
            size: 35,
            color: Colors.blue,
          ),
          Text(
            texto,
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Aute ut reprehenderit consequat do mollit sint. In nostrud reprehenderit in consectetur proident nulla. Nulla amet nulla anim non voluptate Lorem et non do aute. Cillum duis veniam sint ex minim magna sit dolor veniam dolor nulla occaecat quis. Esse deserunt sit sint sint laborum cupidatat. In ut commodo dolore do velit ad nostrud nulla consequat et.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
