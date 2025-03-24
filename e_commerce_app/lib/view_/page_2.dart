import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool index=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          // SizedBox(height: 100.h, width: 50.w,),

          Padding(
            padding: const EdgeInsets.all(85.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset('assets/man_img.jpg', height: 400, width: 300, fit: BoxFit.fill,),
            ),
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
                    Text('Look Good, Feel Good', style: GoogleFonts.agbalumo(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Text('Create Your Individual,Unique Style & look amazing everyday', style: TextStyle(fontSize: 15.sp, color: Colors.grey,),),
                    ),

                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            height: 60.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: index==0?Colors.amber:Colors.green
                            ),
                            child: Text('Tap Here'),
                          ),
                        ),

                        InkWell(
                          onTap: (){   
                          },
                          child: Container(
                            height: 60.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: index==0?Colors.green:Colors.amber,
                              borderRadius: BorderRadius.circular(12.r)
                            ),
                            child: Text('Tap Here'),
                              ),
                        )
                      ],
                    ),

                    
                  ],
                ),
                  
                                
                  ),
                )
            
              ],)
        ],
      ),
    );
  }
}