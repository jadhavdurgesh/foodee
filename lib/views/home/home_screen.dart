import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodee/common/heading.dart';
import 'package:foodee/constants/colors.dart';
import 'package:foodee/constants/constants.dart';
import 'package:foodee/constants/constants.dart';
import 'package:foodee/constants/sizes.dart';
import 'package:foodee/views/home/constants/home_list.dart';
import 'package:foodee/views/home/widgets/banner_list.dart';
import 'package:foodee/views/home/widgets/category_list.dart';
import 'package:foodee/views/home/widgets/food_list.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common/custom_appbar.dart';
import '../../constants/constants.dart';
import 'all_fastest_food.dart';
import 'all_near_by_restaurant.dart';
import 'recommendations.dart';
import 'widgets/nearby_restaurants_list.dart'; // Import the custom app bar

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: CustomAppBar(), // Use the custom app bar
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: FixedExtentScrollPhysics(),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  'TODAY\'S EXCITING OFFER'
                ),
              ),
              20.heightBox,
              BannerCarousel(),
              20.heightBox,
              Center(
                child: Text(
                  'DURGESH, WHAT\'S ON YOUR MIND?',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              CategoryList(),
              Heading(text: 'QUICK PICKS FOR YOU', ontap: (){
                Get.to(() => AllNearByRestaurants(),
                transition: Transition.cupertino,
                duration: Duration(microseconds: 500)
                );
              },),
              NearbyRestaurantsList(),
              Heading(text: 'TRY SOMETHING NEW', ontap: (){
                 Get.to(() => Recommendations(),
                transition: Transition.cupertino,
                duration: Duration(microseconds: 500)
                );
              },),
              FoodList(),
              Heading(text: 'FASTEST FOOD CLOSER TO YOU', ontap: (){
                 Get.to(() => AllFastestFood(),
                transition: Transition.cupertino,
                duration: Duration(microseconds: 500)
                );
              },),
              150.heightBox
            ],
          )
        ),
      ),
    );
  }
}


