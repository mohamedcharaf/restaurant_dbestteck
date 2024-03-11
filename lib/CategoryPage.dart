import 'package:flutter/material.dart';
import 'package:helloworld/variable.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text('CategoryPage'),
      ),
      body: Center(
        child: Text(
          'CategoryPage',
        ),
      ),
    );
  }
}
