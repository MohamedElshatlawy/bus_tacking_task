import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class RealtimeMapScrren extends StatefulWidget {
  final String source;
  final String distination;
  const RealtimeMapScrren({
    Key? key,
    required this.source,
    required this.distination,
  }) : super(key: key);

  @override
  _RealtimeMapScrrenState createState() => _RealtimeMapScrrenState();
}

class _RealtimeMapScrrenState extends State<RealtimeMapScrren> {
  Completer<GoogleMapController> _controller = Completer();

  List<Marker> markers = [];
  // all the ploylines
  Set<Polyline> _polyLines = Set<Polyline>();
  // coordinates of polylines
  List<LatLng> _polylineCoordinates = [];
// point reference fetching the source and destinaton
  // late PolylinePoints _polylinePoints;
// late LatLng currentLocation;
//   late LatLng destinationLocation;

  List<Polyline> _polyline = [];
// university
  ///29.997438, 32.500481
  /// jourden
  /// 30.001577679734936, 32.48625244379176
  /// //

  // a line from university to park
  createPolyLine() {
    _polyline.add(
      const Polyline(
          polylineId: PolylineId('source'),
          //TODO sizer
          width: 3,
          points: [
            LatLng(29.997438, 32.500481),
            LatLng( 30.000973748864524,
       32.48467525820285)
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
    // _polylinePoints = PolylinePoints();
    createPolyLine();
    createMarkerSourceAndDistination(
      id: 0,
      lat: 29.997438,
      long: 32.500481,
      title: 'Suez University',
    );
    createMarkerSourceAndDistination(
      id: 1, 
      lat:  30.000973748864524,
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
      appBar: AppBar(
        title: Text('Realtime Map'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        // polylines: _polyLines,
        polylines: _polyline.toSet(),
        initialCameraPosition: const CameraPosition(
          target: LatLng(38.9637, 35.2433),
          zoom: 10,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          // _setPolyLines();
        },
        markers: markers.toSet(),
      ),
    );
  }
//   const kGoogleApiKey = "API_KEY";

// Prediction p = await PlacesAutocomplete.show(
//                           context: context,
//                           apiKey: kGoogleApiKey,
//                           mode: Mode.overlay, // Mode.fullscreen
//                           language: "fr",
//                           components: [new Component(Component.country, "fr")]);
  // fetch the route
  // add polyline to the ap
  // _setPolyLines()async{

  //   PolylineResult _result=await _polylinePoints.getRouteBetweenCoordinates("AIzaSyDhOiDnAI-6Msg02fKovVc8SXE5YemiQAg",
  //   //currentLocation.latitude, currentLocation.longitude
  //   PointLatLng(38.9637, 35.2433),
  //   //destinationLocation.latitude, destinationLocation.longitude
  //   PointLatLng(37.9637, 35.2433),
  //    );
  //    if(_result.status=='OK'){//point.latitude, point.longitude
  //      _result.points.forEach((PointLatLng point) { //LatLng(38.9637, 35.2433)
  //       _polylineCoordinates.add(LatLng(point.latitude, point.longitude));

  //      });
  //      setState(() {
  //        _polyLines.add(
  //          Polyline(polylineId: PolylineId('1'),width: 18,color: Colors.red,points: _polylineCoordinates)
  //        );
  //      });
  //    }
  // }
}
