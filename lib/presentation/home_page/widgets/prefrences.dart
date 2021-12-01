import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PrefrencesWidget extends StatelessWidget {
  const PrefrencesWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: EdgeInsets.only(right: 4.w, bottom: 5.h),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: faddenGreyColor),
              boxShadow: const [
                BoxShadow(
                  color: lightFaddenGreyColor,
                  blurRadius: 0.1,
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(6.w),
              ),
            ),
            // prefrences text and icon
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.5.h, top: 0.5.h, right: 2.w),
              child: Row(
                children: [
                  // tune icon
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Icon(
                      Icons.tune,
                      size: 15.sp,
                      color: darkerGreyColor,
                    ),
                  ),
                  // Prefrences Text
                  Text(
                    "Prefrences ",
                    style: TextStyle(
                      color: darkGreyColor,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}