import 'package:flutter/widgets.dart';
import 'package:payani/screens/cart/cart_screen.dart';
import 'package:payani/screens/checkin_success/checkin_success_screen.dart';
import 'package:payani/screens/complete_profile/complete_profile_screen.dart';
import 'package:payani/screens/details/details_screen.dart';
import 'package:payani/screens/filter/filter_screen.dart';
import 'package:payani/screens/forgot_password/forgot_password_screen.dart';
import 'package:payani/screens/home/home_screen.dart';
import 'package:payani/screens/invite_friends/invite_friends_screen.dart';
//import 'package:payani/screens/hotel_details/hdetails_screen.dart';
import 'package:payani/screens/login_success/login_success_screen.dart';
import 'package:payani/screens/otp/otp_screen.dart';
import 'package:payani/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:payani/screens/profile/profile_screen.dart';
import 'package:payani/screens/reservation/reservation_screen.dart';
import 'package:payani/screens/reservation_success/reservation_success_screen.dart';
import 'package:payani/screens/review/review_screen.dart';
import 'package:payani/screens/sign_in/sign_in_screen.dart';
import 'package:payani/screens/splash/splash_screen.dart';
import 'package:payani/screens/update_profile/update_profile_screen.dart';
import 'screens/hotel_rooms/hotel_rooms_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  FilterScreen.routeName: (context) => FilterScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ReservationScreen.routeName: (context) => ReservationScreen(),
  ReservationSuccessScreen.routeName: (context) => ReservationSuccessScreen(),
  CheckinSuccessScreen.routeName: (context) => CheckinSuccessScreen(),
  PrivacyPolicyScreen.routeName: (context) => PrivacyPolicyScreen(),
  InviteFriendsScreen.routeName: (context) => InviteFriendsScreen(),
  ReviewScreen.routeName: (context) => ReviewScreen(),
  HotelRoomsScreen.routeName: (context) => HotelRoomsScreen(),
  UpdateProfileScreen.routeName: (context) => UpdateProfileScreen(),
  //DetailPage.routeName: (context) => DetailPage(cityModel),
};
