import 'package:flutter/material.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'package:helloworld/restaurant_tile.dart';
import 'package:helloworld/variable.dart';

import 'RestaurantWidget.dart';
import 'uidart.dart';

class AllNerbyRestaurants extends StatelessWidget {
  const AllNerbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        backgroundColor: kOffWhite,
        title: Text(
          'All Nearby Restaurant',
          style: appStyle(13, kDark, FontWeight.w600),
        ),
      ),
      body: Container(
          height: height_,
          padding: EdgeInsets.only(left: 12, top: 10),
          child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                categories.length,
                (i) {
                  var vitamine2 = categories[i];
                  return RestaurantTile(
                    restaurant_: vitamine2,
                  );
                },
              ))),
    );
  }
}
