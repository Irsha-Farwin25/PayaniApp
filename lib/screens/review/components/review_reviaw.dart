import 'package:flutter/material.dart';
import '../../../constants.dart';


class FilterFilder extends StatelessWidget {
  const FilterFilder({
    Key key,
    @required this.filter,
  }) : super(key: key);

  final Filter filter;
  
    @override
    Widget build(BuildContext context) {

            return Row(
              children: [
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filter.product.title,
                style: TextStyle(color: Colors.black, fontSize: 14),
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  //text: "\$${cart.product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                  children: [
                    TextSpan(
                        //text: " x${cart.numOfItem}",
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              )
            ],
          )
        ],
      );
    }
  }
  
  class Filter {
  get product => null;
}
