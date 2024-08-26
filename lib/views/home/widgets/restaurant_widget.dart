// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodee/constants/colors.dart';

import '../../../constants/constants.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    Key? key,
    required this.image,
    required this.logo,
    required this.title,
    required this.time,
    required this.rating,
    this.ontap,
  }) : super(key: key);

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * .75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kOffWhite,
          ),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 122.h,
                        width: width * 0.8,
                        child: Image.network(image , fit: BoxFit.fitWidth),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
