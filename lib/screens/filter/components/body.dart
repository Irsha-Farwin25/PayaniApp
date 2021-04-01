import 'package:flutter/material.dart';
import 'package:payani/screens/filter/components/price_range.dart';
import 'package:payani/screens/filter/components/rating.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'facilities.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(15)),
            Category(),
            SizedBox(height: getProportionateScreenWidth(15)),
            PriceRange(),
            SizedBox(height: getProportionateScreenWidth(15)),
            Rating(),
            SizedBox(height: getProportionateScreenWidth(15)),
            Facilities(),
            // SizedBox(height: getProportionateScreenWidth(15)),
          ],
        ),
      ),
    );
  }
}
