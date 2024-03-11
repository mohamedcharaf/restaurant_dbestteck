import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'package:helloworld/variable.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget(
      {Key? key,
      required this.image,
      required this.title,
      this.onTap,
      required this.price,
      required this.rating})
      : super(key: key);
  final String image;
  final String title;
  final String price;
  final String rating;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Container(
            width: width_ * .35,
            height: 192,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: kLightWhite),
            child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            height: 120,
                            width: width_ * 0.4,
                            child: Image.asset(image, fit: BoxFit.fitWidth),
                          ),
                        ),

                        //     Positioned(
                        //       right: 10,
                        //       left:10,
                        //       child: ClipRRect(
                        //         borderRadius: BorderRadius.circular(50),
                        //         child:Container(
                        //                         color: kLightWhite,
                        //                         child: Padding(padding: EdgeInsets.all(2),
                        //                         child:ClipRRect(borderRadius: BorderRadius.circular(50),
                        //                         child: Image.asset(logo),
                        //                         )
                        //                     )
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery time",
                          style: appStyle(12, kDark, FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '  $title ',
                              style: appStyle(12, kDark, FontWeight.w500),
                            ),
                            Text(
                              '  $price ',
                              style: appStyle(12, kDark, FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: 5,
                              itemBuilder: (contextn, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 12,
                            ),
                            Text(
                              rating,
                              style: appStyle(12, kGray, FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
