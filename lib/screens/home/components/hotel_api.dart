// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Hotel {
//   final String name;


//   const Hotel({
//    this.name,
//   });

//   static Hotel fromJson(Map<String, dynamic> json) => Hotel(
//         name: json['name'],
//       );
// }

// class HotelApi {
//   static Future<List<Hotel>> getHotelSuggestions(String query) async {
//     final url = Uri.parse('http://payani.namsiu.org/search/search_bar');
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final List hotels = json.decode(response.body);

//       return hotels.map((json) => Hotel.fromJson(json)).where((hotel) {
//         final nameLower = hotel.name.toLowerCase();
//         final queryLower = query.toLowerCase();

//         return nameLower.contains(queryLower);
//       }).toList();
//     } else {
//       throw Exception();
//     }
//   }
// }