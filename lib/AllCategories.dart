import 'CategoryPage.dart';
import 'Category_tile.dart';
import 'background_container.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'package:helloworld/uidart.dart';
import 'package:helloworld/variable.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALLcategories'),
        backgroundColor: kOffWhite,
      ),
      body:
          //  BackGroundContainer(
          //   color: Colors.red,
          //   child:
          Container(
        padding: EdgeInsets.only(left: 12, top: 10),
        height: height_,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(categories.length, (i) {
            var category = categories[i];

            return CategoryTile(category: category);
          }),
        ),
      ),
    );
  }
}
