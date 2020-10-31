import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image(
            image: AssetImage('assets/scroll-1.png'),
            fit: BoxFit.cover,
          ),
        ),
        Center(
            child: SafeArea(
          child: Column(
            children: [
              Text(
                '11°C',
                style: TextStyle(fontSize: 40),
              ),
              Text('Miercoles', style: TextStyle(fontSize: 40)),
              Expanded(child: Container()),
              Icon(
                Icons.keyboard_arrow_down,
                size: 80,
              )
            ],
          ),
        )),
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
            onPressed: null,
            color: Colors.blue,
            shape: StadiumBorder(),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Hola',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
