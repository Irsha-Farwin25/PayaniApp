import 'package:flutter/material.dart';

import 'components/body.dart';

class CheckinSuccessScreen extends StatelessWidget {
  static String routeName = "/checkin_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Checkin Success"),
      ),
      body: Body(),
    );
  }
}
