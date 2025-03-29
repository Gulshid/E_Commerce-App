import 'package:e_commerce_app/Utils_/Routes/Routes.dart';
import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => EProvider())],

          child: Builder(
            builder: (BuildContext context) {
              final pro = Provider.of<EProvider>(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: "Flutter Structure Design",
                themeMode: pro.themeMode,

                // theme: ThemeData(
                //   applyElevationOverlayColor: true,
                //   brightness: Brightness.light,
                //   appBarTheme: AppBarTheme(color: Colors.white),
                //   primarySwatch: Colors.blue,
                //   textTheme: Typography.englishLike2018.apply(
                //     fontSizeFactor: 1.sp,

                //   ),

                // ),
                theme: pro.lightTheme,
                darkTheme: pro.darkTheme,
                // home: ToggleSwitch(),
                initialRoute: RoutesName.home,
                onGenerateRoute: Routes.generateRoute,
              );
            },
          ),
        );
      },
    );
  }
}
