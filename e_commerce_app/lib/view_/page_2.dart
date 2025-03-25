// ignore_for_file: deprecated_member_use

import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          // SizedBox(height: 100.h, width: 50.w,),
          Positioned.fill(
            child: Image.asset('assets/man_img.jpg', fit: BoxFit.fill),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 250.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),

                  child: Column(
                    children: [
                      Text(
                        'Look Good, Feel Good',
                        style: GoogleFonts.agbalumo(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          'Create Your Individual,Unique Style & look amazing everyday',
                          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        ),
                      ),

                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Pro.change_Color(true);
                              Navigator.pushReplacementNamed(
                                context,
                                RoutesName.page3,
                              );
                            },
                            child: Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color:
                                    Pro.c_index
                                        ? Colors.blueAccent
                                        : const Color.fromARGB(
                                          255,
                                          208,
                                          206,
                                          206,
                                        ).withOpacity(0.3),

                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  'Men',
                                  style: GoogleFonts.agbalumo(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              Pro.change_Color(false);
                              Navigator.popAndPushNamed(
                                context,
                                RoutesName.page3,
                              );
                            },
                            child: Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color:
                                    Pro.c_index
                                        ? const Color.fromARGB(
                                          255,
                                          208,
                                          206,
                                          206,
                                        ).withOpacity(0.3)
                                        : Colors.blueAccent,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  'Women',
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

                      SizedBox(height: 20.h),

                      Center(
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
