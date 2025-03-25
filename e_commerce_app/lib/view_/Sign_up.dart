import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_/toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=>Navigator.popAndPushNamed(context, RoutesName.page3),
          icon: Icon(Icons.arrow_back, color: Colors.black,)),
      ),


      body: Column(
        children: [
          SizedBox(height: 30.h,),
          Center(child: Text('Sign Up', style: GoogleFonts.agbalumo(fontSize: 30.sp, color: Colors.black),),),
        SizedBox(height: 50.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.check, color: Colors.green,),
                label: Text('Username'),
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                enabledBorder: OutlineInputBorder(   borderRadius: BorderRadius.circular(10.r),),

              ),

              
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                suffixText: 'Strong',
                suffixStyle: TextStyle(color: Colors.green),
                label: Text('Password'),
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                enabledBorder: OutlineInputBorder(   borderRadius: BorderRadius.circular(10.r),),

              ),

              
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.check, color: Colors.green,),
                label: Text('Email Address'),
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                enabledBorder: OutlineInputBorder(   borderRadius: BorderRadius.circular(10.r),),

              ),

              
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Remember me'),
              ToggleSwitch(),
            ],
          )

        ],
      ),
    );
  }
}