import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:helloworld/CustomeAppbar.dart';
import 'package:helloworld/variable.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.text, this.onTap_}) : super(key: key);
  final String text;
  final void Function()? onTap_;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              text,
              style: appStyle(12, Colors.black, FontWeight.w100),
            ),
          ),
          GestureDetector(
            onTap: onTap_,
            child: Icon(
              AntDesign.appstore1,
              color: kSecondary,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
