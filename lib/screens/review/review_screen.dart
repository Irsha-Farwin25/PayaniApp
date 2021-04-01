import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/check_out_review.dart';

class ReviewScreen extends StatelessWidget {
  static String routeName = "/review";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.purple[600],
      body: Body(),
      bottomNavigationBar: CheckoutReviaw(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Review",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
