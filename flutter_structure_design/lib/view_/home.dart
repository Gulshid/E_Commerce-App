// import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  

  @override
  Widget build(BuildContext context) {
    // final pro = Provider.of<EProvider>(context);
    return Scaffold(
      body: ListView(
        children: [
        hello(),
        hello(),
        hello(),
          hello(),

            hello(),
          hello(),


            hello(),
          hello(),

        ],
      )
    );
  }
}

class hello extends StatelessWidget {
  const hello({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100.h,
        width: 200.w,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20.r)
        ),
      
        child: Center(child: Text('Hello World', style: TextStyle(color: Colors.black, fontSize: 40.sp),),),
      ),
    );
  }
}




