// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class Heading extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  const Heading({
    super.key,
    required this.text, this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Text(
              text,
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
          GestureDetector(
            onTap: ontap,
            child: Icon(
              AntDesign.rightcircleo,
              color: Colors.grey[400],
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
