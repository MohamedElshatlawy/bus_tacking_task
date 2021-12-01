import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SavedRoutesCard extends StatelessWidget {
  const SavedRoutesCard({required this.isLoved, Key? key}) : super(key: key);
  final bool isLoved;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: lightGreyColor,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.w),
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6.w),
        ),
      ),
      child: Row(
        children: [
          // Coloumn of three attributes
          Expanded(
            flex: 2,
            child: Wrap(
              runSpacing: 2.h,
              children: [
                // miters text and its icon
                Row(
                  children: [
                    // support icon
                    const Icon(Icons.support),
                    // 1680-MR text
                    Container(
                      margin: EdgeInsets.only(left: 0.2.w),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.w, horizontal: 3.w),
                      decoration: BoxDecoration(
                        color: lightFaddenGreyColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.8.w),
                        ),
                      ),
                      child: const Text(
                        "1680-MR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: theMostDarkerGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, right: 3.w),
                      child: SvgPicture.asset(
                        "assets/images/go_back_arrow.svg",
                        height: 2.h,
                        width: 2.h,
                      ),
                    ),
                    // TO Home text
                    RichText(
                      text: const TextSpan(
                        text: 'To ',
                        style: TextStyle(
                          color: faddenGreyColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Home ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkerGreyColor,
                            ),
                          ),
                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                  ],
                ),
                // time icon and Trip taken on 12/30/20
                Row(
                  children: [
                    Builder(builder: (context) {
                      return Icon(
                        Icons.query_builder_outlined,
                        size: 18.sp,
                        color: Colors.black,
                      );
                    }),
                    const Text(" Trip taken on 12/30/20"),
                  ],
                ),
              ],
            ),
          ),

          // 26KM From YOU
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.str,
              children: [
                //  const Icon(Icons.ac_unit),
                isLoved
                    ? Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          "assets/images/heart.svg",
                          height: 3.5.w,
                          width: 3.5.w,
                        ),
                      )
                    : const SizedBox.shrink(),
                isLoved
                    ? SizedBox(
                        height: 1.5.h,
                      )
                    : const SizedBox.shrink(),
                // 26 km from you text
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: '26  km',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: darkerGreyColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nFrom You',
                        style: TextStyle(
                          color: faddenGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
