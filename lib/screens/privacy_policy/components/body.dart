import 'package:flutter/material.dart';
import 'package:payani/components/default_button.dart';
import 'package:payani/screens/home/home_screen.dart';
import 'package:payani/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      SizedBox(height: SizeConfig.screenHeight * 0.1),
      // Image.asset(
      //   "assets/images/success.png",
      //   height: SizeConfig.screenHeight * 0.49, //40%
      // ),
      SizedBox(height: SizeConfig.screenHeight * 0.01),
      Text(
        "It is important to understand why Payani request to collect and use your location data, we explain this in our Privacy Policy .we will never sell your information to third parties",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(28),
          fontWeight: FontWeight.normal,
          color: Colors.red,
        ),
      ),
      //Spacer(),
      SizedBox(height: getProportionateScreenHeight(110)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(370),
            child: DefaultButton(
              text: "Agree and Continue",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          Spacer(),
        ],
      )
    ]));
  }
}
