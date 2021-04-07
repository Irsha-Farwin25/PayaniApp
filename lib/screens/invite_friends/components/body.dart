import 'package:flutter/material.dart';
import 'package:payani/components/no_account_text.dart';
import '../../../size_config.dart';
import 'invite_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Invite Friends",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Invite your Friends to get amazing experience from Payani .",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                InviteForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
