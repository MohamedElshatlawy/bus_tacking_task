import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class GoTodayAndTime extends StatelessWidget {
  const GoTodayAndTime({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     
          Container(
            margin: EdgeInsets.only(left: 4.w, bottom: 5.h),
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
            child: Row(
              children: [
                // go today icon
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: SvgPicture.asset(
                    "assets/images/target_arrow.svg",
                    color: darkerGreyColor,
                    height: 2.h,
                    width: 2.w,
                  ),
                ),
                // go today text
                RichText(
                  text: const TextSpan(
                    text: 'Go ',
                    style: TextStyle(
                      color: faddenGreyColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Today ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkerGreyColor,),),
                      // TextSpan(text: ' world!'),
                    ],
                  ),
                ),
                //time icon
                Icon(
                  Icons.support,
                  size: 12.sp,
                  color: darkGreyColor,
                ),
                // time text
                Text(
                  "3:10 PM ",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          )
       ;
  }
}