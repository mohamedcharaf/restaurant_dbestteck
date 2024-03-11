// ignore_for_file: file_names, unused_import, unnecessary_import, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'AllNerbyRestaurants.dart';
import 'CategoryList.dart';
import 'CustomContainer.dart';
import 'CustomeAppbar.dart';
import 'Heading.dart';
import 'nearby_restaurant_.dart';
import 'variable.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: kGray,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .black12), // Couleur lorsque la barre de recherche est en focus
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              CategotyList(), // Fix the typo here
              Heading(
                  text: "vitamine",
                  onTap_: () {
                    Get.to(
                      () => AllNerbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900),
                    );
                  }),
              NearbyRestaurants(),
              Heading(
                  text: "mamant et enfants",
                  onTap_: () {
                    Get.to(
                      () => AllNerbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900),
                    );
                  }),
              NearbyRestaurants(),
              Heading(
                  text: "beauty",
                  onTap_: () {
                    Get.to(
                      () => AllNerbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900),
                    );
                  }),
              NearbyRestaurants(),

              // Add other widgets or complete the code as needed
            ],
          ),
        ),
      ),
    );
  }
}
