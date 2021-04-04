import 'package:flutter/material.dart';
import 'package:payani/screens/filter/components/rating.dart';
import 'package:payani/size_config.dart';
import 'components/check_out_review.dart';

class ReviewScreen extends StatelessWidget {
  static String routeName = "/review";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      //backgroundColor: Colors.purple[600],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(15)),
            Rating(),
            SizedBox(height: getProportionateScreenWidth(15)),
            TextFormField(
              
              keyboardType: TextInputType.multiline,
              minLines: 1,//Normal textInputField will be displayed
              maxLines: 5,
               decoration: InputDecoration(
                              hintText: 'What do you say?',
                              hintStyle: TextStyle(color: Colors.black),
              
                            ),
           
            ),
          //  CheckoutReviaw(),
            // SizedBox(height: getProportionateScreenWidth(15)),
          ],
        ),
      ),
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
