import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodee/constants/colors.dart';
import 'package:foodee/constants/sizes.dart';

import '../../../constants/constants.dart';
import '../../../constants/uidata.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h, // Adjusted height to fit two categories
      // color: kSecondary,
      // padding: EdgeInsets.only(left: 12.w,),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          (categories.length / 2).ceil(), // Number of columns
          (index) {
            int firstIndex = index * 2;
            int secondIndex = firstIndex + 1;
            return Row(
              children: [
                Column(
                  children: [
                    _buildCategoryItem(categories[firstIndex]),
                    if (secondIndex < categories.length)
                      SizedBox(height: 10.h), // Spacing between categories
                    if (secondIndex < categories.length)
                      _buildCategoryItem(categories[secondIndex]),
                  ],
                ),
                SizedBox(width: 16.w), // Spacing between columns
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryItem(Map<String, dynamic> category) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      width: width * 0.2,
      child: Column(
        children: [
          Image.asset(category['imageUrl'] , height: 80.h, width: 100.h,),
          // SizedBox(height: 5.h),
          Text(
            category['title'],
            style: TextStyle(fontSize: 12.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
