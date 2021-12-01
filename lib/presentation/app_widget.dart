import 'package:bus_tracking_app/application/search_card_cubit/search_card_cubit.dart';
import 'package:bus_tracking_app/injection.dart';
import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:bus_tracking_app/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

// AppBer
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Bus Tracking App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // primarySwatch: Colors.blue,font
            // backgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              color: greyColor,
              elevation: 0,
              iconTheme: IconThemeData(color: darkGreyColor, size: 20.sp),
              titleTextStyle: TextStyle(
                color: darkerGreyColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            textTheme: TextTheme(
              // for hint input text
              bodyText1: TextStyle(
                color: faddenGreyColor,
                fontSize: 12.sp,
              ),
              // // for
              bodyText2: const TextStyle(
                color: darkerGreyColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            iconTheme: IconThemeData(color: darkerGreyColor, size: 20.sp),
          ),
          home: BlocProvider<SearchCardCubit>(
            create: (context) => getIt<SearchCardCubit>(),
            child: const HomePage(),
          ),
        );
      },
    );
  }
}
