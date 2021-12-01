import 'package:bus_tracking_app/application/search_card_cubit/search_card_cubit.dart';
import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// contains source, destination input text and swap button
class InputCardAndSwapButton extends StatefulWidget {
  const InputCardAndSwapButton({Key? key}) : super(key: key);

  @override
  State<InputCardAndSwapButton> createState() => _InputCardAndSwapButtonState();
}

class _InputCardAndSwapButtonState extends State<InputCardAndSwapButton> {
  // for source input
  final TextEditingController sourceTextController = TextEditingController();
  // for source input
  final TextEditingController destinationTextController =
      TextEditingController();

  @override
  void dispose() {
    sourceTextController.dispose();
    destinationTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                // source input and its icon
                TextField(
                  controller: sourceTextController,
                  onChanged: (value) =>
                      BlocProvider.of<SearchCardCubit>(context)
                          .addSource(source: value),
                  decoration: InputDecoration(
                    hintText: "Your Current location",
                    hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: const Icon(Icons.location_searching ),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                // more icon and divider
                Row(
                  children: [
                    // more icon
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Icon(
                        Icons.more_vert,
                        color: lightFaddenGreyColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    // divider line
                    Expanded(
                      child: Divider(
                        color: lightFaddenGreyColor,
                        thickness: 0.2.h,
                        height: 1.h,
                        indent: 5.w,
                      ),
                    ),
                    // swap button
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<SearchCardCubit>(context).swap(
                            sourceController: sourceTextController,
                            destinationController: destinationTextController);
                      },
                      icon: Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: SvgPicture.asset("assets/images/swap.svg")
                        // Icon(
                        //   Icons.swap_horiz_rounded,
                        //   color: lightFaddenGreyColor,
                        //   size: Theme.of(context).iconTheme.size,
                        // ),
                      ),
                    ),
                  ],
                ),
                //distination input button
                TextField(
                  controller: destinationTextController,
                  onChanged: (value) =>
                      BlocProvider.of<SearchCardCubit>(context)
                          .addDistenetion(destination: value),
                  decoration: InputDecoration(
                    hintText: "Destination",
                    hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: SvgPicture.asset(
                        "assets/images/send_arrow.svg",
                        height: 3.h,
                        width: 3.w,
                        color: darkerGreyColor,
                      ),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
