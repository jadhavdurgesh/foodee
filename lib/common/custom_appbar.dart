import 'package:flutter/material.dart';
import 'package:foodee/constants/colors.dart';
import 'package:foodee/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return AppBar(
      scrolledUnderElevation: 0,
      titleSpacing: 0, // Removes default padding
      automaticallyImplyLeading: false, // Removes back button if present
      backgroundColor: kWhite, // Set background color of AppBar
      elevation: 0, // Remove shadow
      title: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0), // Add padding to the left
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://st.depositphotos.com/1224365/2498/i/450/depositphotos_24980235-Portrait-of-a-normal-man-smiling-over-grey-background.jpg'),
              radius: 20,
            ),
          ),
          const SizedBox(width: 12), // Spacing between avatar and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deliver to',
                style: TextStyle(
                  color: kSecondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 14, // Adjust font size
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth * 0.5, // Set a width limit
                child: const Text(
                  'Shpno.5,oppjyothinivascoll,jncrd,5, Jnc Road',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12, // Adjust font size
                    color: Colors.black, // Adjust text color
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Text(
            getTimeOfDay(),
            style: const TextStyle(fontSize: 34),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12)
      return '☀️';
    else if (hour >= 12 && hour <= 16)
      return '⛅';
    else
      return '🌙';
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
