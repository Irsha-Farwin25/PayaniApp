import 'package:flutter/material.dart';

import 'components/body.dart';

class InviteFriendsScreen extends StatelessWidget {
  static String routeName = "/invite_friends";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        leading: SizedBox(),
        title: Text('Invite Friends', style: TextStyle(color: Colors.white)),
      ),
      body: Body(),
    );
  }
}
