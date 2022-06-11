import 'package:flutter/material.dart';
import 'package:kopi/location/google_maps_widget.dart';
import 'package:kopi/location/user_location.dart';
import 'package:kopi/location/location_provider.dart';
import 'package:kopi/location/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'dart:async';

// class Maps extends StatefulWidget {
//   const Maps({Key? key}) : super(key: key);

//   @override
//   _MapsState createState() => _MapsState();
// }

// class _MapsState extends State<Maps> {
//   @override
//   void dispose() {
//     LocationServices().closeLocation();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var locationProvider = Provider.of<LocationProvider>(context);
//     print(locationProvider.userLocation);
//     return StreamProvider<UserLocation>(
//         initialData: locationProvider.userLocation,
//         create: (context) => LocationServices().locationStream,
//         child: MapsScreen());
//   }
// }

// const double cameraZoom = 10;
// const double cameraTilt = 50;
// const double cameraBearing = 30;

// class MapsScreen extends StatefulWidget {
//   @override
//   _MapsScreenState createState() => _MapsScreenState();
// }

// class _MapsScreenState extends State<MapsScreen> {
//   late Position position;
//   late GoogleMapController mapControler;
//   Completer<GoogleMapController> _controller = Completer();
//   late LatLng lastPosition;
//   final Set<Marker> _markers = {};

//   void dispose() {
//     LocationServices().closeLocation();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Consumer(builder: (context, LocationProvider provider, _) {
//       if (provider.status == LocationProviderStatus.Loading ||
//           provider.status == LocationProviderStatus.Initial) {
//         return const Center(child: CircularProgressIndicator());
//       } else if (provider.status == LocationProviderStatus.Success) {
//         var locationProvider = Provider.of<UserLocation>(context);

//         CameraPosition initialCameraPosition = CameraPosition(
//             zoom: cameraZoom,
//             target:
//                 LatLng(locationProvider.latitude, locationProvider.longitude));
//         // lastPosition = initialCameraPosition.target;

//         animatedViewofMap(
//             lat: locationProvider.latitude, lng: locationProvider.longitude);

//         return Stack(children: [
//           GoogleMapWidget(
//             markers: _markers,
//             initialCameraPosition: initialCameraPosition,
//             controller: _controller,
//             locationProvider: locationProvider,
//             key: null,
//           ),
//         ]);
//       } else {
//         return const Center(child: Text("We can't reach your location"));
//       }
//     }));
//   }

//   void animatedViewofMap({required double lat, required double lng}) async {
//     CameraPosition cPosition = CameraPosition(
//       zoom: cameraZoom,
//       target: LatLng(lat, lng),
//     );
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(cPosition));
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Google Maps Demo',
//       home: Maps(),
//     );
//   }
// }

class Maps extends StatefulWidget {
  @override
  State<Maps> createState() => MapSampleState();
}

class MapSampleState extends State<Maps> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.terrain,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
