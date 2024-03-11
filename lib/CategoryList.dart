// ignore_for_file: unused_local_variable, unused_import, file_names

import 'dart:html';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:helloworld/CategoryController.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'variable.dart';
import 'AllCategories.dart';

import 'uidart.dart';

class CategotyList extends StatelessWidget {
  const CategotyList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 1, top: 10),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            categories.length,
            (i) {
              var category = categories[i];
              return GestureDetector(
                  onTap: () {
                    if (controller.categoryValue == category['_id']) {
                      controller.updateCategory = '';
                      controller.updatetitle = '';
                    } else if (category['value'] == 'More') {
                      Get.to(() => const AllCategories(),
                          transition: Transition.fadeIn,
                          duration: const Duration(milliseconds: 900));
                    } else {
                      controller.updateCategory = category['_id'];
                      controller.updatetitle = category['title'];
                    }
                  },
                  child: Obx(
                    () => Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.only(top: 4),
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: controller.categoryValue == category['_id']
                                ? Colors.green
                                : Colors.red,
                          )),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            child: Image(
                              image: AssetImage(category['imageUrl'] ??
                                  'assets/images/01.jpg'),
                            ),
                          ),
                          Text(
                            category['title'],
                            style: appStyle(12, kDark, FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          )),
    );
  }
}
