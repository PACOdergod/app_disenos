import 'package:app_disenos/src/pages/basica_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños',
      initialRoute: '/basico',
      routes: {
        '/basico': (BuildContext context) => BasicoPage(),
      },
    );
  }
}
