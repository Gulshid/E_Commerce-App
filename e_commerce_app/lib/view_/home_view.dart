import 'package:e_commerce_app/view_/Drawer_menu.dart';
import 'package:e_commerce_app/view_/bottom_bar.dart';
import 'package:e_commerce_app/view_/p1.dart';
import 'package:e_commerce_app/view_/p2.dart';
import 'package:e_commerce_app/view_/p3.dart';
import 'package:e_commerce_app/view_/p4.dart';
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
    p1(),
    p2(),
    p3(),
    p4(),
  ];
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: pro.isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(),
      drawer: DrawerMenu(),
      bottomNavigationBar: BottomBar(),

      body:_pages[pro.selected]


      
    );
  }
}
