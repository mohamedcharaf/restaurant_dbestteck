// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'variable.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: 500,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.person,
                          size: 13,
                        )
                        // backgroundColor: Colors.black,
                        // backgroundImage: NetworkImage("https://webdi.fr/img/couleurs/850606.png"),
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hi Adel",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Text(
                            "good morning",
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(11, Colors.grey, FontWeight.normal),
                          ),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     hintText: 'Rechercher...',
                        //     prefixIcon: Icon(
                        //       Icons.search,
                        //       color: kGray,
                        //     ),
                        //     border: OutlineInputBorder(),
                        //     focusedBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Colors
                        //               .black12), // Couleur lorsque la barre de recherche est en focus
                        //       borderRadius: BorderRadius.circular(8.0),
                        //     ),
                        //   ),
                        // ),
                      ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Your location ",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "Ain temouchent ",
                        style:
                            TextStyle(fontSize: 10, color: Colors.greenAccent),
                      ),
                    ],
                  ),
                  Row(children: const [
                    Icon(Icons.notifications),
                    Icon(Icons.ac_unit),
                  ])
                ],
              ),
            ),
          ],
        ));
    // ignore: dead_code
  }
}

TextStyle appStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
