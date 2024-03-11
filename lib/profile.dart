// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomContainer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Text("vvv"),
      ),
      body: SafeArea(child: CustomContainer(containerContent: Container())),
    );
  }
}
