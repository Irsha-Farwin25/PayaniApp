import 'package:flutter/material.dart';

import 'components/body.dart';

class AboutUsScreen extends StatelessWidget {
  static String routeName = "/about_us";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text('About Us', style: TextStyle(color: Colors.white)),
      ),
      body: Body(),
    );
  }
}
