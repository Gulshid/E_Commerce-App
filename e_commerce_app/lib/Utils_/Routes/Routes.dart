import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_/Splash_view.dart';
import 'package:e_commerce_app/view_/home_view.dart';
import 'package:e_commerce_app/view_/page_1.dart';
import 'package:e_commerce_app/view_/page_2.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings hello) {
    switch (hello.name) {
      case RoutesName.splash:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => SplashView(),
          );
        }

      case RoutesName.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeView(),
          );
        }

      case RoutesName.page1:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Page1());
        }

      case RoutesName.page2:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Page2());
        }

      default:
        {
          return MaterialPageRoute(
            builder:
                (_) => Scaffold(
                  body: Center(
                    child: Text('No Route defined for${hello.name}'),
                  ),
                ),
          );
        }
    }
  }
}
