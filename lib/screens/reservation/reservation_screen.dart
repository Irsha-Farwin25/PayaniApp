import 'package:flutter/material.dart';
import 'components/body.dart';
//import 'components/check_out_filter.dart';

class ReservationScreen extends StatelessWidget {
  static String routeName = "/reservation";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      //bottomNavigationBar: CheckoutFilder(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      //backgroundColor: Colors.purple[600],
      title: Column(
        children: [
          Text(
            "Reservation",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
