import 'package:flutter/material.dart';
import 'package:payani/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      SizedBox(height: SizeConfig.screenHeight * 0.1),
      SizedBox(height: SizeConfig.screenHeight * 0.01),
      Text(
        "Payani is a hotel reservation system \nwhere you can find hotels for your suitable prices \n\n\nemail - PayaniApp@gmail.com\nwebsite -www.Payaniiii.com\naddress- uom katubedda",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      //Spacer(),
      SizedBox(height: getProportionateScreenHeight(110)),
     
    ]));
  }
}
