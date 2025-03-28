import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        crossAxisSpacing: 4,
        childAspectRatio: 1,
      ),
      itemCount: 36,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100.h,
            width: 200.w,
            decoration: BoxDecoration(
              color: index.isOdd ? const Color.fromARGB(255, 3, 244, 19) : const Color.fromARGB(255, 255, 182, 65),
              borderRadius: BorderRadius.circular(10),
            ),
          
            child: Center(
              child: Text(
                'hello:$index',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ),
          ),
        );
      },
    );
  }
}
