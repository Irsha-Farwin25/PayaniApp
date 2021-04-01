import 'package:flutter/material.dart';

import 'components/body.dart';

class ReservationSuccessScreen extends StatelessWidget {
  static String routeName = "/reservation_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Reservation Success"),
      ),
      body: Body(),
    );
  }
}
