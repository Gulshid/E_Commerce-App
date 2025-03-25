import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class EProvider with ChangeNotifier {
  //Make Provider for Splash Screen

  bool _loading = false;
  bool get loading => _loading;

  //set the loading value
  void set_loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  //define the Splash Loading delayed
  void Splash(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.page1);
    });
  }

  //load all the  data of splash in one function
  void load_data(BuildContext context) {
    set_loading(true);
    Splash(context);
    set_loading(false);
  }
  /* Provider of Splash Screen has been Completed     */

  //Make Provider for Home Page1
  void page1(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesName.page2);
    });
  }

  //for Button colot change
  bool c_index = true;
  void change_Color(bool value) {
    c_index = value;
    notifyListeners();
  }

  //url launcher
  //for facebook
  final Uri url1 = Uri.parse('https:/facebook.com');
  // ignore: unused_element
  Future<void> launcherurl() async {
    if (!await launchUrl(url1)) {
      throw Exception('Could not Launched $url1');
    }
    notifyListeners();
  }

  //url launcher
  //for Twitter
  final Uri url2 = Uri.parse('https:/twitter.com');
  Future<void> launcherurl2() async {
    if (!await launchUrl(url2)) {
      throw Exception('Could not Launched $url2');
    }
    notifyListeners();
  }


   //url launcher
  //for Google
  final Uri url3 = Uri.parse('https:/google.com');
  Future<void> launcherurl3() async {
    // ignore: deprecated_member_use
    if (!await launchUrl(url3)) {
      throw Exception('Could not Launched $url3');
    }
    notifyListeners();
  }
}
