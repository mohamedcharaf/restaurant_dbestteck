import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'package:helloworld/uidart.dart';
import 'package:helloworld/variable.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({Key? key, this.restaurant_}) : super(key: key);
  final dynamic restaurant_;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          height: 70,
          width: width_,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.amberAccent,
          ),
          child: Container(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Image(
                          image: AssetImage(restaurant_['imageUrl'] ??
                              'assets/images/01.jpg'),
                        ),
                      ),
                      // Positioned(
                      //   bottom: 0,
                      //   child: Container(
                      //     padding: EdgeInsets.only(left: 6, bottom: 2),
                      //     color: kGray.withOpacity(0.6),
                      //     height: 16,
                      //     width: 16,
                      //     child: RatingBarIndicator(
                      //       itemBuilder: (context, i) => Icon(
                      //         Icons.star,
                      //         color: kSecondary,
                      //       ),
                      //       itemSize: 15,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant_['title'],
                      style: appStyle(12, Colors.black, FontWeight.w600),
                    ),
                    Text(
                      "price : ${restaurant_['price']}",
                      style: appStyle(12, Colors.green, FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 6,
          child: Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
              color: restaurant_['isOpen'] == true ||
                      restaurant_['isAvailable'] == null
                  ? kPrimaryLight
                  : kRed,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                restaurant_['isOpen'] == true ||
                        restaurant_['isAvailable'] == null
                    ? "Open"
                    : "closed",
                style: appStyle(12, kDark, FontWeight.w600),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
