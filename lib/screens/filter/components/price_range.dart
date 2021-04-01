import 'package:flutter/material.dart';
import 'package:payani/screens/filter/components/section_title.dart';
import '../../../size_config.dart';


class PriceRange extends StatelessWidget {
  const PriceRange({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
          child: SectionTitle(
            title: "Price Range",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
             children: [
               MyStatefulWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}



