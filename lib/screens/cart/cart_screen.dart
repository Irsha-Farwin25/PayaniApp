import 'package:flutter/material.dart';
import 'package:payani/components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import 'components/body.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(),
     bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Saved Hotels",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
