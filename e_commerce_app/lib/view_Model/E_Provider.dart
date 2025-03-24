import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:flutter/widgets.dart';

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
}
