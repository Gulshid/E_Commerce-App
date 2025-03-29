// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  ValueNotifier<bool> obsecure = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, RoutesName.SignUp);
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Welcome',
                  style: GoogleFonts.agbalumo(
                    color: Colors.black,
                    fontSize: 30.sp,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Center(
                child: Text(
                  'Please! enter your data to Continue',
                  style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                ),
              ),

              SizedBox(height: 100.h),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        label: Text('Username'),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                        suffixIcon: Icon(Icons.check, color: Colors.green),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ValueListenableBuilder(
                      valueListenable: obsecure,
                      builder: (context, value, child) {
                        return TextField(
                          style: TextStyle(color: Colors.black),
                          obscureText: obsecure.value,
                          decoration: InputDecoration(
                            label: Text('Password'),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.sp,
                            ),
                            suffixText: 'Strong',
                            suffixStyle: TextStyle(color: Colors.green),
                            suffixIcon: InkWell(
                              onTap: () {
                                obsecure.value = !obsecure.value;
                              },
                              child: Icon(
                                obsecure.value
                                    ? Icons.visibility_off
                                    : Icons.visibility_sharp,
                                color: Colors.green,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 20.0,
                        ),
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          'Remember me ',
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

                  SizedBox(height: 80.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By connecting your account confirm that you agree with our ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: 'Term and Condition',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Container(
                    height: 80.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
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
                        'Login Now',
                        style: GoogleFonts.agbalumo(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
