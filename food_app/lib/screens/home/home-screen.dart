import 'package:flutter/material.dart';
import 'package:food_app/screens/home/components/app_bar.dart';
import 'package:food_app/screens/home/components/body.dart';
import 'package:food_app/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
