// ignore_for_file: must_be_immutable, unused_import, file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'variable.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, required this.containerContent});
  Widget containerContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: SizedBox(
          width: width_,
          child: SingleChildScrollView(child: containerContent),
        ),
      ),
    );
  }
}
