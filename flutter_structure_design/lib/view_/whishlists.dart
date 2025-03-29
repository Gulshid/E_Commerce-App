import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Whishlists extends StatelessWidget {
  const Whishlists({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 2 / 3,
      children: List.generate(36, (index) {
        return Container(
          height: 100.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: index.isOdd? Colors.lightBlue: Colors.limeAccent,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Center(
            child: Text(
              'hello:$index',
              style: TextStyle(color: Colors.black, fontSize: 20.sp),
            ),
          ),
        );
      }),
    );
  }
}
