import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodee/views/home/home_screen.dart';
import 'package:foodee/views/main_screen.dart';
import 'package:foodee/views/onboarding/splash_screen.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';

Widget defaultHome = MainScreen();
Widget splashScreen = SplashScreen();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodee',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            scaffoldBackgroundColor: kOffWhite,
            iconTheme: const IconThemeData(color: kDark),
            // primarySwatch: Colors.white,
          ),
          home: splashScreen,
          routes: {
        '/nextScreen': (context) => MainScreen(), // Replace with your next screen widget
      },
        );
      },
    );
  }
}
