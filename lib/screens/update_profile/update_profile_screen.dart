import 'package:flutter/material.dart';

import 'components/body.dart';

class UpdateProfileScreen extends StatelessWidget {
  static String routeName = "/update_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text('My Account', style: TextStyle(color: Colors.white)),
      ),
      body: Body(),
    );
  }
}
