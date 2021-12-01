import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/saved_route_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SavedTimeWidget extends StatelessWidget {
  const SavedTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(6.w),
        ),
      ),
      child: Column(
        children: [
          // Saved routes Text
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.w, top: 2.h, bottom: 2.h),
              child: Text(
                "Saved routes",
                style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                      fontSize: 12.sp,
                    ),
              ),
            ),
          ),
          // container of Saved routes
          // with love icon
          const SavedRoutesCard(isLoved: true),
          // space
          SizedBox(height: 2.h),
           // container of Saved routes 
           // without love icon
          const SavedRoutesCard(isLoved: false),

          Container(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Show recent trips",

                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: darkGreyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
