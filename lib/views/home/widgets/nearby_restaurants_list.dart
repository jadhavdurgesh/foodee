import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodee/constants/uidata.dart';
import 'package:foodee/views/home/widgets/restaurant_widget.dart';

import '../../../constants/colors.dart';

class NearbyRestaurantsList extends StatelessWidget {
  const NearbyRestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (index) {
          var restaurant = restaurants[index];
          return RestaurantWidget(
              image: restaurant['imageUrl'].toString(),
              logo: restaurant['logoUrl'].toString(),
              title: restaurant['title'].toString(),
              time: restaurant['time'].toString(),
              rating: restaurant['rating'].toString());
        }),
      ),
    );
  }
}
