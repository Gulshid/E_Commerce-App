import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.popAndPushNamed(context, RoutesName.page2),
          icon: Icon(Icons.arrow_back))
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40.sp,),
          Center(child: Text('Lets get started', style: GoogleFonts.agbalumo(color: Colors.black, fontSize: 25.sp,),)),

          SizedBox(height: 80.h,),
          
          
        ],
      ),
    );
  }
}
