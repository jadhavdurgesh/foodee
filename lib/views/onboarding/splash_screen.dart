import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodee/constants/sizes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    // Schedule navigation after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/nextScreen'); // Replace with your route name
    });

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/images/logo/foodee_logo3.svg',
              height: SizeConfig.screenHeight * 0.3,
            ),
          ),
          Positioned(
            bottom: SizeConfig.screenHeight * 0.41,
            left: SizeConfig.screenWidth * 0.21,
            child: Text(
              'Deliciously Easy, Anytime, Anywhere',
              style: TextStyle(
                color: kTextLogo, 
                fontWeight: FontWeight.w500, 
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
