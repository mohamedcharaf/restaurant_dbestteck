// ignore_for_file: sized_box_for_whitespace, depend_on_referenced_packages, file_names, unused_local_variable, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomePage.dart';

import 'TabIndex.dart';

import 'variable.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pageList = [
    HomePage(),
    //   const ProfilePage(),
    //  searchPage(),
    //  const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController()); // Correction ici
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    selectedIconTheme: const IconThemeData(color: Colors.white),
                    onTap: (value) {
                      controller.setTabIndex = value;

                      // Vous pouvez ajouter une logique ici pour gérer le changement d'onglet
                    },
                    currentIndex: controller.tabIndex,
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabIndex == 0
                              ? const Icon(Icons.home)
                              : const Icon(Icons.home),
                          label: 'Home'),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: 'Search'),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.card_travel), label: 'Cart'),
                      BottomNavigationBarItem(
                          icon: controller.tabIndex == 3
                              ? const Icon(Icons.supervised_user_circle)
                              : const Icon(
                                  Icons.supervised_user_circle_outlined),
                          label: 'Profile'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
