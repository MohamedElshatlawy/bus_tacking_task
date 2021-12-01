import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/go_today_time.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/input_card.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/prefrences.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/saved_routes_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// home body
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // card for input and output
          const InputCard(),
          // goToday and prefrences container
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              // Go Today
              GoTodayAndTime(),
              // prefrences container
              PrefrencesWidget(),
            ],
          ),
          Container(height:2.h,color:lightGreyColor ),
          // Saved Routes
          const SavedTimeWidget(),
        ],
      ),
    );
  }
}
