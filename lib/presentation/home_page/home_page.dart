import 'package:bus_tracking_app/application/search_card_cubit/search_card_cubit.dart';
import 'package:bus_tracking_app/presentation/core/colors.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/bottom_navigator_bar.dart';
import 'package:bus_tracking_app/presentation/home_page/widgets/home_body.dart';
import 'package:bus_tracking_app/presentation/map_page/map_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // when ever the user click the arrow icon button
    // if the conditions are not satified, the snackbar
    // will pop up
    return BlocListener<SearchCardCubit, SearchCardState>(
      listener: (context, state) {
        if (!state.isValid) {
          // show snake bar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage,
                textAlign: TextAlign.center,
              ),
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      // scaffold
      child: Scaffold(
        // home app bar
        appBar: AppBar(
          title: const Text("Your Trip planner"),
          // go to map button
          leading: IconButton(
            onPressed: () {
              if (BlocProvider.of<SearchCardCubit>(context).canGoToMap()) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MapPage(),
                  ),
                );
              }
            },
            // go to map icon
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).appBarTheme.iconTheme!.color,
              size: Theme.of(context).appBarTheme.iconTheme!.size,
            ),
          ),
        ),
        backgroundColor: Colors.white,

        // body
        body: const HomeBody(),
        // bottom sheet
        bottomNavigationBar: const BottomNavigatorBar(),
      ),
    );
  }
}
