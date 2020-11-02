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
        'basicoPage': (BuildContext context) => BasicoPage(),
        'scrollPage': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
