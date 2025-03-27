// ignore_for_file: dead_code

import 'dart:io';

import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
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
  final Uri url1 = Uri.parse('https://www.facebook.com/r.php');
  // ignore: unused_element
  Future<void> launcherurl() async {
    if (!await launchUrl(url1)) {
      throw Exception('Could not Launched $url1');
    }
    notifyListeners();
  }

  //url launcher
  //for Twitter
  final Uri url2 = Uri.parse('https://twitter.com');
  Future<void> launcherurl2() async {
    if (!await launchUrl(url2)) {
      throw Exception('Could not Launched $url2');
    }
    notifyListeners();
  }

  //url launcher
  //for Google
  final Uri url3 = Uri.parse('accounts.google.com/signin');
  Future<void> launcherurl3() async {
    // ignore: deprecated_member_use
    if (!await launchUrl(url3)) {
      throw Exception('Could not Launched $url3');
    }
    notifyListeners();
  }

  // for switch toggle
  bool _isSwitch = true;
  bool get IsSwitch => _isSwitch;

  void toggle_Switch(bool val) {
    _isSwitch = val;
    notifyListeners();
  }

  //for bottom Navigation bar
  int _selected = 0;
  int get selected => _selected;

  void Change_Selected(int index) {
    _selected = index;
    notifyListeners();
  }

  //future function for image
  File? _image;
  File? get image => _image;

  Future<void> get_image() async {
    final Picked_File = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (Picked_File != null) {
      _image = File(Picked_File.path);
      notifyListeners();
    }
  }

  //dark and light mode toggle Switch
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.white,
      ),
      textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
