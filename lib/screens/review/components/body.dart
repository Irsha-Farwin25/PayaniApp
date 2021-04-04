import 'package:flutter/material.dart';
import 'package:payani/screens/review/components/TextBOx.dart';
import 'package:payani/screens/review/components/rating.dart';
import '../../../size_config.dart';
import 'check_out_review.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: getProportionateScreenHeight(15)),
            Rating(),
            SizedBox(height: getProportionateScreenWidth(15)),
            //TextBox(),
            //SizedBox(height: getProportionateScreenWidth(15)),
            //CheckoutReviaw(),
            // SizedBox(height: getProportionateScreenWidth(15)),
          ],
        ),
      ),
    );
  }
}
