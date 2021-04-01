import 'package:flutter/material.dart';
import 'package:payani/models/Product.dart';
import 'package:payani/screens/cart/components/cart_card.dart';
import 'product_images.dart';
import 'package:payani/models/Cart.dart';

import '../../../size_config.dart';
//import 'cart_card.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: ProductImages(product: widget.product),
                  decoration: BoxDecoration(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: ListView.builder(
                      itemCount: demoCarts.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Dismissible(
                          key: Key(demoCarts[index].product.id.toString()),
                          direction: DismissDirection.endToStart,
                          // onDismissed: (direction) {
                          //   setState(() {
                          //     demoCarts.removeAt(index);
                          //   });
                          // },
                          background: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE6E6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Spacer(),
                              ],
                            ),
                          ),
                          child: CartCard(cart: demoCarts[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //  SlidingUpPanel(
        //     panel: Container(
        //       height: 200,
        //       width: 300,
        //       decoration: BoxDecoration(
        //           color: Colors.blue.withOpacity(0.25),
        //           borderRadius: BorderRadius.circular(20)),
        //     ),
        //   ),
        
      ],
    );
  }
}
