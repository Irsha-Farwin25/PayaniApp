import 'package:flutter/material.dart';
import 'package:payani/screens/invite_friends/invite_friends_screen.dart';
import 'package:payani/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:payani/screens/review/review_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Privacy Policy",
            icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.pushNamed(context, PrivacyPolicyScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.pushNamed(context, ReviewScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Invite Friends",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.pushNamed(context, InviteFriendsScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
