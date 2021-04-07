import 'package:flutter/material.dart';
import 'package:payani/screens/about_us/about_us_screen.dart';
import 'package:payani/screens/invite_friends/invite_friends_screen.dart';
import 'package:payani/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:payani/screens/sign_in/sign_in_screen.dart';
import 'package:payani/screens/update_profile/update_profile_screen.dart';

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
            press: () => {
               Navigator.pushNamed(context, UpdateProfileScreen.routeName)
            },
          ),
          ProfileMenu(
            text: "Privacy Policy",
            icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.pushNamed(context, PrivacyPolicyScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "About us",
            icon: "assets/icons/Settings.svg",
            press: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen(),),);
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
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen(),),);
            },
          ),
        ],
      ),
    );
  }
}
