import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Cart', style: TextStyle(color: Colors.black),),),
      body:  ListView.builder(
        itemCount: 10,
        itemBuilder: (contex, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.h,
              width: 200.w,
                  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: index.isEven ? Colors.green : Colors.tealAccent,
              ),
                  
              child: Center(child: Text('Hello:$index', style: TextStyle(color: Colors.black, fontSize: 20.sp),),),
            ),
          );
        },
      ),
    );
  }
}
