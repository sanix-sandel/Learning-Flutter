import 'package:flutter/material.dart';
import './ball.dart';
import './bat.dart';

class Pong extends StatefulWidget {
  @override
  _PongState createState() => _PongState();
}

class _PongState extends State<Pong> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Stack(
        children: <Widget>[
          Positioned(child: Ball(), top: 0),
          Positioned(child: Bat(200, 25), bottom: 0),
        ],
      );
    });
  }
}
