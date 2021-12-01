import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/input_card_and_swap_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

// input card
class InputCard extends StatelessWidget {
  const InputCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          // outer shape of the input card
          // which is seems to be a part of the
          // app bar
          Container(
            color: greyColor,
            height: 7.h,
          ),
          Positioned(
            left: 3.w,
            right: 3.w,
            bottom: 5.h,
            // container color and border
            child: Container(
              height: 25.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: faddenGreyColor),
                boxShadow: const [
                  BoxShadow(
                    color: lightFaddenGreyColor,
                    blurRadius: 0.2,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(6.w),
                ),
              ),
              // input card inner components
              child:const  InputCardAndSwapButton(),
            ),
          ),
         
        ],
      ),
    );
  }
}
