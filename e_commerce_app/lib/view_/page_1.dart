import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<EProvider>(context, listen: false).page1(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset('assets/store_img.gif', height: 120.h, width: 120.w, fit: BoxFit.fill,),
            ),
          ),
          Center(
            child:Text('Blue Mountain Shop', style: GoogleFonts.agbalumo(fontSize: 20.sp, color: Colors.white),) ,),
        ],
      ),
    );
  }
}
