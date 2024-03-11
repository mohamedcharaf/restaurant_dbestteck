import 'package:flutter/material.dart';
import 'package:helloworld/RestaurantWidget.dart';
import 'package:helloworld/uidart.dart';
import 'package:helloworld/variable.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        padding: EdgeInsets.only(left: 12, top: 10),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              categories.length,
              (i) {
                var category2 = categories[i];
                return RestaurantWidget(
                  image: category2['imageUrl'] ?? 'assets/images/01.jpg',
                  title: category2['title'],
                  price: category2['price'],
                  rating: category2['rating'],
                );
              },
            )));
  }
}
