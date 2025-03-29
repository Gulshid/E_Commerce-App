// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  ValueNotifier<bool> obsecured = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.popAndPushNamed(context, RoutesName.page3),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Center(
              child: Text(
                'Sign Up',
                style: GoogleFonts.agbalumo(fontSize: 30.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.check, color: Colors.green),
                  label: Text('Username'),
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.check, color: Colors.green),
                  label: Text('Email Address'),
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: ValueListenableBuilder(
                valueListenable: obsecured,
                builder: (context, value, child) {
                  return TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: obsecured.value,
                    // obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black),
                      suffixText: 'Strong',
                      suffixIcon: InkWell(
                        onTap: () {
                          obsecured.value = !obsecured.value;
                        },
                        child: Icon(
                          obsecured.value
                              ? Icons.visibility_off
                              : Icons.visibility_sharp,
                          color: Colors.green,
                        ),
                      ),
                      suffixStyle: TextStyle(color: Colors.green),
                      label: Text('Password'),
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  );
                },
              ),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Remember me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Switch(
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Colors.green,
                    value: pro.IsSwitch,
                    onChanged: (value) {
                      pro.toggle_Switch(value);
                    },
                  ),
                ),
              ],
            ),
        
            SizedBox(height: 170.h),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.login);
              },
              child: Container(
                height: 80.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.r),
        
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
        
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.agbalumo(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
