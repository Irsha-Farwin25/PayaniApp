import 'package:flutter/material.dart';
import '../../../size_config.dart';


class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
         
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(children: [
        
               MyStatefulWidget(),
            ],),
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
    return Container(
      child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      minLines: 10,
      maxLines: 15,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Write your status here',
        filled: true,
        fillColor: Color(0xFFDBEDFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  ),
      
    );
  }
}

