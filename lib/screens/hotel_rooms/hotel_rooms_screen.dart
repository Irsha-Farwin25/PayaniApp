import 'package:flutter/material.dart';

class HotelRoomsScreen extends StatefulWidget {
  
  static String routeName = "/hotelroom";
  HotelRoomsScreen() :super();
  final String title = "Hotel Rooms";
  @override
  _HotelRoomsScreenState createState() => _HotelRoomsScreenState();
}

class _HotelRoomsScreenState extends State<HotelRoomsScreen> {
 
  custom() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "Hilton Hotel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            background: Image.network(
               "https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/itemimages/95/37/9537_v2.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
    delegate: SliverChildListDelegate(
      [
        Container(color: Colors.red, height: 150.0),
        Container(color: Colors.purple, height: 150.0),
        Container(color: Colors.green, height: 150.0),
      ],
    ),
),
// This builds an infinite scrollable list of differently colored 
// Containers.
SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      // To convert this infinite list to a list with three items,
      // uncomment the following line:
      // if (index > 3) return null;
      return Container( height: 150.0);
    },
    // Or, uncomment the following line:
    // childCount: 3,
  ),
)
      ],
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: custom(),

    );
    
    
  }
}