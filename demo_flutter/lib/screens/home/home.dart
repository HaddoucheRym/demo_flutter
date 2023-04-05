import 'package:demo_flutter/screens/home/widget/food_list.dart';
import 'package:demo_flutter/screens/home/widget/restaurant_info.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/restaurant.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
              Icons.arrow_back_ios_new_outlined, Icons.search_outlined),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
          }, restaurant)
        ],
      ),
    );
  }
}
