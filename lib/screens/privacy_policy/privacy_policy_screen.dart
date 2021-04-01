import 'package:flutter/material.dart';

import 'components/body.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static String routeName = "/privacy_policy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        leading: SizedBox(),
        title: Text('Privacy Policy', style: TextStyle(color: Colors.white)),
      ),
      body: Body(),
    );
  }
}
