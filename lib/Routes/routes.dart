// ignore_for_file: constant_identifier_names

import 'package:botttom_bar_with_bloc/Screens/SaplachPage.dart';
import 'package:botttom_bar_with_bloc/Screens/bottom_navigation_bar_screen.dart';
import 'package:botttom_bar_with_bloc/Screens/sign_up.dart';
import 'package:flutter/material.dart';

import '../Screens/sign_in_page.dart';

class PageRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Pages.SPLASH_PAGE:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SaplashPage());
      case Pages.SIGNUP_PAGE:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SignUpPage());

      case Pages.SIGNIN_PAGE:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SignInPage());
            

     case Pages.EXPLORE_PAGE:
        return MaterialPageRoute(settings: settings,builder: (_) => ExplorePage());




      default:
        return MaterialPageRoute(
            builder: (_) => const MaterialApp(
                  home: Scaffold(
                    body: Center(
                      child: Text('Not Routes Define'),
                    ),
                  ),
                ));
    }
  }
}

class Pages {
  static const String SPLASH_PAGE = '/';
  static const String SIGNUP_PAGE = '/signUp';
  static const String SIGNIN_PAGE = '/signIn';
  static const String EXPLORE_PAGE = '/Explore';
  static const String FORGOTPASSWORD_PAGE = '/ForfotPassword';
  static const String FOLLOWREQUEST_PAGE = '/FOLLOWREQUEST_PAGE';
  static const String ALLPHOTO_PAGE = '/ALLPHOTO_PAGE';
  static const String SENDOTP_PAGE = '/SENDOTP_PAGE';
  static const String NEWPASSWORD_PAGE = '/NEWPASSWORD_PAGE';
  static const String FOLLOWING_PAGE = '/FOLLOWING_PAGE';
  static const String FOLLOWERSPAGE = '/FOLLOWERSPAGE';
  
}
