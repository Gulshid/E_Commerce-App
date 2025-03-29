import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<EProvider>(context, listen: false).load_data(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          ClipRRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset('assets/E-Commerce.webp', height: 120.h, width: 120.w, fit: BoxFit.fill,),
          ),

          Center(
            child: Text('E-Commerce App', style: 
            GoogleFonts.agbalumo(fontSize: 30.sp, color: Colors.black),),
          ),

          SpinKitWaveSpinner(
            color: Colors.deepPurple,
            size: 50.sp,)



        ],
      ),
    );
  }
}
