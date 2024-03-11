import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:flutter/material.dart';

import 'CategoryPage.dart';
import 'CustomeAppbar.dart';
import 'variable.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(
          () => CategoryPage(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 900),
        );
      },
      leading: CircleAvatar(
        radius: 30,
        child: ClipOval(
          child: Container(
            width: 60, // Adjust the container size as needed
            height: 60, // Adjust the container size as needed
            child: Image(
              image: AssetImage(category['imageUrl'] ?? 'assets/images/01.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      title: Text(
        category['title'],
        style: appStyle(12, kGray, FontWeight.w500),
      ),
    );
  }
}
