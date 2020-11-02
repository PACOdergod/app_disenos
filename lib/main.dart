import 'package:app_disenos/src/pages/basica_page.dart';
import 'package:app_disenos/src/pages/botones_page.dart';
import 'package:app_disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));
    return MaterialApp(
      title: 'Diseños',
      initialRoute: BotonesPage.routName,
      routes: {
        BasicoPage.routName: (BuildContext context) => BasicoPage(),
        ScrollPage.routName: (BuildContext context) => ScrollPage(),
        BotonesPage.routName: (BuildContext context) => BotonesPage(),
      },
    );
  }
}
