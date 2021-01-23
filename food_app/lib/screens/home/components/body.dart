import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/search_box.dart';
import 'category_list.dart';
import 'item_card.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
