import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Hello',
                style: GoogleFonts.agbalumo(
                  color: pro.isDarkMode ? Colors.white : Colors.black,
                  fontSize: 30.sp,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text(
                'Welcome to Shop',
                style: GoogleFonts.agbalumo(
                  color: pro.isDarkMode ? Colors.white : Colors.grey,
                ),
              ),
            ),
        
            Row(
              children: [
                SizedBox(width: 10.w),
                Container(
                  height: 40.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 243, 243),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: pro.isDarkMode ? Colors.white : Colors.black,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: pro.isDarkMode ? Colors.white : Colors.black,
                      ),
        
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
        
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
        
                SizedBox(width: 5.w),
                Container(
                  height: 40.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.mic_sharp,
                    color: pro.isDarkMode ? Colors.white : Colors.white,
                  ),
                ),
              ],
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              child: Text(
                'Choose Brand',
                style: GoogleFonts.poppins(
                  color: pro.isDarkMode ? Colors.white : Colors.black,
                  fontSize: 20.sp,
                ),
              ),
            ),
        
            Row(
              children: [
                ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: const Color.fromARGB(255, 222, 74, 74),
                        ),
                        child: Text("hello${index+1}"),
                                      
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
