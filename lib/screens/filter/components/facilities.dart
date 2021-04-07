import 'package:flutter/material.dart';
import 'package:payani/screens/filter/components/section_title.dart';
import '../../../size_config.dart';


class Facilities extends StatefulWidget {
  const Facilities({
    Key key,
  }) : super(key: key);

  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
          child: SectionTitle(
            title: "Facilities",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
        Column(
          children: <Widget>[
            LabeledCheckbox(
           
              label: 'Free wifi',
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              },
            ),
             
            LabeledCheckbox(
              label: 'Parking',
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              value: _isSelected2,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected2 = newValue;
                });
              },
            ),
            LabeledCheckbox(
              label: 'Free swimming pool',
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              value: _isSelected3,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected3 = newValue;
                });
              },
            ),
            LabeledCheckbox(
              label: 'Theatre',
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              value: _isSelected1,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected1 = newValue;
                });
              },
            ),
            LabeledCheckbox(
              label: 'Park',
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              value: _isSelected4,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected4 = newValue;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
    this.icons
  });

 final Widget icons;
  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
         
            Checkbox(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
