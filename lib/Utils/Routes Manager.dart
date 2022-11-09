import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/DiscoverScreen.dart';
import 'package:instagram_clone/Screens/ForgotPass.dart';
import 'package:instagram_clone/Screens/Home.dart';
import 'package:instagram_clone/Screens/Login.dart';
import 'package:instagram_clone/Screens/ProfileScreen.dart';
import 'package:instagram_clone/Screens/SplashScreen.dart';
import 'package:instagram_clone/Utils/AppStrings.dart';
import 'package:instagram_clone/Utils/TextStyle.dart';

class Routes {
  static const String Splash = "/";
  static const String LoginRoute = "/Login";
  static const String ForgetPassRoute = "/ForgetPass";
  static const String HomeRoute = "/Home";
  static const String ProfileRoute = "/Profil";
  static const String DiscoverRoute = "/Discover";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.LoginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.ForgetPassRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassScreen());
      case Routes.HomeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.ProfileRoute:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case Routes.DiscoverRoute:
        return MaterialPageRoute(builder: (_) => DiscoverScreen());
      default:
        return IndifinedRoute();
    }
  }

  static Route<dynamic> IndifinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(
                  AppString.NonValidRoute,
                  style: getLabelText(color: Colors.white),
                ),
              ),
            )
          );
  }
}
