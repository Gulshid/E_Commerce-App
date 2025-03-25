import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    final Prov = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.popAndPushNamed(context, RoutesName.page2),
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40.sp),
          Center(
            child: Text(
              'Lets get started',
              style: GoogleFonts.agbalumo(color: Colors.black, fontSize: 25.sp),
            ),
          ),

          SizedBox(height: 80.h),

          InkWell(
            onTap: ()=>Prov.launcherurl(),
            child: Container(
              height: 50.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(10.r),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage('assets/facebook_icon.gif',)
                  ),
                  SizedBox(width: 10.w,),
                  Center(child: Text('facebook', style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 18.sp),)),
                ],
              ),
            ),
          ),

          SizedBox(height: 10.h),
          InkWell(
          onTap: ()=>Prov.launcherurl2(),
            child: Container(
              height: 50.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10.r),
              ),
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                backgroundImage:  AssetImage('assets/twitter_icon.gif'),
                ),

                SizedBox(width: 10.w,),
                  Center(child: Text('Twitter', style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 18.sp),)),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
          InkWell(
            onTap: ()=>Prov.launcherurl3(),
            child: Container(
              height: 50.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.r),
              ),
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/google_icon.gif'),
                  ),
                  SizedBox(width: 5.w,),
                  Text('Google', style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 18.sp),),
                ],
              ),
            ),
          ),

          SizedBox(height: 200.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Already have an account?', style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 18.sp),),
              InkWell(
                onTap:(){},
                child:  Text('Sign in', style: GoogleFonts.agbalumo(color: Colors.black, fontSize: 16.sp),))
            ],
          ),
          SizedBox(height: 5.h,),
          InkWell(
            onTap: (){},
            child: Container(
              height: 65.h,
              width: 340.w,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12.r)
              ),
            
              child: Center(child: Text('Create an Account', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),)),
            ),
          )
          
      ]
      ),
    );
  }
}
