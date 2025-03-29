import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_/Cart.dart';
import 'package:e_commerce_app/view_/Sign_up.dart';
import 'package:e_commerce_app/view_/Splash_view.dart';
import 'package:e_commerce_app/view_/home.dart';
import 'package:e_commerce_app/view_/home_view.dart';
import 'package:e_commerce_app/view_/login.dart';
import 'package:e_commerce_app/view_/page_1.dart';
import 'package:e_commerce_app/view_/page_2.dart';
import 'package:e_commerce_app/view_/page_3.dart';
import 'package:e_commerce_app/view_/setting.dart';
import 'package:e_commerce_app/view_/whishlists.dart';
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

      case RoutesName.page3:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Page3());
        }

      case RoutesName.SignUp:
        {
          return MaterialPageRoute(builder: (BuildContext context) => SignUp());
        }


         case RoutesName.h:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Home());
        }

         case RoutesName.c:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Cart());
        }

         case RoutesName.s:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Setting());
        }

         case RoutesName.w:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Whishlists());
        }

      case RoutesName.login:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => login_view(),
          );
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
