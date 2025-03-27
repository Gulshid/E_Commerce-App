import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
        child: CurvedNavigationBar(
          color: Colors.teal,
          buttonBackgroundColor: Colors.blueAccent,
          backgroundColor: Colors.blueAccent,
          animationDuration: Duration(milliseconds: 200),
          height: 45.h,
          animationCurve: Curves.decelerate,
          onTap: (index) {
            pro.Change_Selected(index);
          },
          items: [
            Icon(Icons.home, color: Colors.black, size: 20.sp),
            Icon(Icons.search, color: Colors.black, size: 20.sp),
            Icon(Icons.favorite, color: Colors.black, size: 20.sp),
            Icon(Icons.person, color: Colors.black, size: 20.sp),
          ],
        ),
      ),
    );
  }
}
