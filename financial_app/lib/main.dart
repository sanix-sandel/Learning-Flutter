import 'package:flutter/material.dart';
import 'package:financial_app/constants/color_constant.dart';
import 'package:financial_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: kAccentColor, backgroundColor: kBackgroundColor),
      home: HomeScreen(),
    );
  }
}
