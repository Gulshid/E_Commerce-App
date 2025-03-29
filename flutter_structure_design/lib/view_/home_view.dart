import 'package:e_commerce_app/view_/Drawer_menu.dart';
import 'package:e_commerce_app/view_/bottom_bar.dart';
import 'package:e_commerce_app/view_/home.dart';
import 'package:e_commerce_app/view_/whishlists.dart';
import 'package:e_commerce_app/view_/Cart.dart';
import 'package:e_commerce_app/view_/setting.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List _pages = [
    Home(),
    Whishlists(),
    Cart(),
    Setting()
  ];
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: pro.isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
      ),
      drawer: DrawerMenu(),
    

      body:_pages[pro.selected],
      bottomNavigationBar: BottomBar(pro: pro),

      
    );
  }
}

