import 'package:bus_tracking_app/all/tracking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _trackUserLocation();
    super.initState();
  }

  final TextEditingController _sourceTextController = TextEditingController();
  final TextEditingController _destinationTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // appBar Title
        title: const Text('Your Trip planner'),
        // go arrow
        leading: IconButton(
            // navigate to map page
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RealtimeMapScrren(
                      source: _sourceTextController.text,
                      distination: _destinationTextController.text,
                    ),
                  ),
                ),
            // back arrow icon
            icon: const Icon(Icons.arrow_back)),
      ),
      // body
      body: Center(
        child: Column(
          children: [
            // source input
            TextField(
              controller: _sourceTextController,
              decoration:
                  const InputDecoration(hintText: "please enter source"),
            ),
            // destination input
            TextField(
              controller: _destinationTextController,
              decoration:
                  const InputDecoration(hintText: "please enter destination"),
            ),
            // swap source vs distination
            IconButton(
              onPressed: () {
                setState(() {
                  String swap = '';
                  swap = _sourceTextController.text;
                  _sourceTextController.text = _destinationTextController.text;
                  _destinationTextController.text = swap;
                });
              },
              // swap icon
              icon: const Icon(Icons.swap_horiz_sharp),
            ),
          ],
        ),
      ),
    );
  }

  // TrackUser Location
  void _trackUserLocation() {
    Location location = Location();
    location.onLocationChanged.listen((LocationData currentLocation) {
      FirebaseFirestore.instance
          .collection('users')
          .doc('TWdJ00DbKH9GpQU5CrwR')
          .set({
        'location': GeoPoint(
          currentLocation.latitude!,
          currentLocation.longitude!,
        )
      });
    });
  }
}
