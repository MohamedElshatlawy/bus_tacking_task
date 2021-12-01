import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sizer/sizer.dart';

// map page
class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  List<Marker> markers = [];
  // all the ploylines
  final List<Polyline> _polyline = [];

  // a line from university to park
  createPolyLine() {
    _polyline.add(
      const Polyline(polylineId: PolylineId('source'), width: 3, points: [
        LatLng(29.997438, 32.500481),
        LatLng(30.000973748864524, 32.48467525820285)
      ]),
    );
  }

  createMarkerSourceAndDistination({
    required int id,
    required String title,
    required double lat,
    required double long,
  }) {
    markers.add(Marker(
      markerId: MarkerId('$id'),
      infoWindow: InfoWindow(
        title: title,
      ),
      // icon:
      position: LatLng(lat, long),
    ));
  }

  @override
  void initState() {
    super.initState();
    // track all the signed users
    _trackUserLocation();
    createPolyLine();
    createMarkerSourceAndDistination(
      id: 0,
      lat: 29.997438,
      long: 32.500481,
      title: 'Suez University',
    );
    createMarkerSourceAndDistination(
      id: 1,
      lat: 30.000973748864524,
      long: 32.48467525820285,
      title: 'Bader Hypermarket',
    );

    // retrieve the cars
    FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .listen((QuerySnapshot<Map<String, dynamic>> snapshot) {
      snapshot.docChanges.forEach((element) {
        // print("/n hi ${element.doc.id}/n");
        setState(() {
          markers.add(
            Marker(
              markerId: MarkerId(element.doc.id),
              infoWindow: InfoWindow(
                title: element.doc.get('name'),
              ),
              // icon:
              position: LatLng(
                element.doc.get('location').latitude,
                element.doc.get('location').longitude,
              ),
            ),
          );
        });
      });
    });
  }

  //  LocationData currentLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('BMTC'),
        actions: const [Icon(Icons.person)],
      ),
      body:
          // Stack(
          //   children: [
          GoogleMap(
        mapType: MapType.normal,
        // polylines: _polyLines,
        polylines: _polyline.toSet(),
        initialCameraPosition: const CameraPosition(
          target: LatLng(30.000973748864524, 32.48467525820285),
          zoom: 10,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: markers.toSet(),
      ),
      //     Positioned(
      //       left: 2.w,
      //       right: 2.w,
      //       bottom: 0,
      //       child: Container(
      //         height: 40.h,
      //         decoration: const BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(
      //                 15.0,
      //               ),
      //               topRight: Radius.circular(15.0)),
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.black,
      //               blurRadius: 16.0,
      //               spreadRadius: 0.5,
      //               offset: Offset(0.7, 0.7),
      //             ),
      //           ],
      //         ),
      //         child: Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //               children: const [Text("Distance"), Text("Travel Time: 25 min")],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 const Text("26 km"),
      //                 Row(
      //                   children: const [Icon(Icons.timeline), Text("02:15pm")],
      //                 ),
      //                 Row(
      //                   children: const [Icon(Icons.timeline), Text("02:45pm")],
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               children: const [
      //                 Text("trip taken on 12/30/20"),
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 Column(
      //                   children:  [
      //                     Row(children: [
      //                       const Icon(Icons.ac_unit),
      //                       Column(children: const [Text("From ..."),Text("Nov 04, 02:15pm")],),
      //                     ],),
      //                     // TODO
      //                     // SVG

      //                    Row(children: [
      //                       const Icon(Icons.ac_unit),
      //                       Column(children: const [Text("To Commercial Street"),Text("Nov 04, 02:40pm")],),
      //                     ],),
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     MaterialButton(onPressed: (){},child: Row(children: const [Icon(Icons.notifications),Text("SET REMINDER")],),),
      //                     MaterialButton(onPressed: (){},child: Row(children: const [Icon(Icons.play_arrow),Text("PLAY ONLINE")]),),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: 36.h,
      //       right: 2.w,
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: const CircleAvatar(
      //           child: Icon(Icons.share),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  // TrackUser Location
  void _trackUserLocation() {
    Location location = Location();
    location.onLocationChanged.listen(
      (LocationData currentLocation) {
        FirebaseFirestore.instance
            .collection('users')
            .doc('TWdJ00DbKH9GpQU5CrwR')
            .set(
          {
            'location': GeoPoint(
              currentLocation.latitude!,
              currentLocation.longitude!,
            ),
          },
        );
      },
    );
  }
}
