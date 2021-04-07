import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  var _suggestionTextFieldControoler = new TextEditingController();
  List suggestionList = [
    'Hilton',
    'Marino beach hotel',
    'Cinnamon red',
    'Steuart by Citrus',
    'Pegasus Reef Hotel',
    'Earl Red',
    'Shangri-la',
    'Lvy Lane Colombo',
    'Green Palace',
    'Taj Samudra',
    'jetwing',
    'Me Colombo',
    'Fern Colombo',
    'Mandarina Colombo',
    'Earls Blue',
    'Galadari Hotel',
    'The Kingsbury',
    'Clock inn',
    'Tarshish Villa-Colombo',
    'Drop inn',
    'Renuka',
    'Parana',
    'Green palace',
    'The manor',
    'Platinum one',
    'Thilhara',
    'Ashan',
    'C1 colombo Fort',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            AutoCompleteTextField(
              clearOnSubmit: false,
              controller: _suggestionTextFieldControoler,
              suggestions: suggestionList,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenWidth(9)),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Search hotels",
                  prefixIcon: Icon(Icons.search)),
              itemFilter: (item, query) {
                return item.toLowerCase().startsWith(query.toLowerCase());
              },
              itemSorter: (a, b) {
                return a.compareTo(b);
              },
              itemSubmitted: (item) {
                _suggestionTextFieldControoler.text = item;
              },
              itemBuilder: (context, item) {
                return Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        item,
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                );
              },
              key: null,
            ),
          ],
        ),
      ),
    );
  }
}