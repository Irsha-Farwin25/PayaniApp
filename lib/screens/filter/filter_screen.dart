import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/check_out_filter.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = "/filter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutFilder(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Filter",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
