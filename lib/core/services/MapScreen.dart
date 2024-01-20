import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:new_batic/core/services/EnterSevices.dart';

class MapScreen extends StatefulWidget {
  final String servicesName;
  final double lon, lat;

 const MapScreen({Key? key, required this.servicesName, required this.lon, required this.lat}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late BitmapDescriptor myIcon;
  String str_service = "school";
  final String mapKey = "AIzaSyAoil6egyTbeRl_QsgScpxGzr13e9WXKu0";//AIzaSyBrMNG-aw3NKiCWkwAbpHcRYWLfmF8ygu8
  late GoogleMapController mapController;
  late CameraPosition cam_pos;

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  Set<Marker> markers = {};
  MapType currentMapType = MapType.hybrid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(str_service),
        leading: Container(
          padding: const EdgeInsets.all(9),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        actions: [
          PopupMenuButton<MapType>(
            onSelected: (MapType result) {
              setState(() {
                currentMapType = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MapType>>[
              PopupMenuItem<MapType>(
                value: MapType.normal,
                child: Text('Normal'),
              ),
              PopupMenuItem<MapType>(
                value: MapType.satellite,
                child: Text('Satellite'),
              ),
              PopupMenuItem<MapType>(
                value: MapType.terrain,
                child: Text('Terrain'),
              ),
              PopupMenuItem<MapType>(
                value: MapType.hybrid,
                child: Text('Hybrid'),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.zoom_in),
            onPressed: () {
              mapController.animateCamera(
                CameraUpdate.zoomIn(),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.zoom_out),
            onPressed: () {
              mapController.animateCamera(
                CameraUpdate.zoomOut(),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: _getHeight(context),
                child: GoogleMap(
                  myLocationButtonEnabled: true,
                  zoomControlsEnabled: true,
                  zoomGesturesEnabled: true,
                  scrollGesturesEnabled: true,
                  mapToolbarEnabled: false,
                  rotateGesturesEnabled: true,
                  tiltGesturesEnabled: false,
                  myLocationEnabled: true,
                gestureRecognizers: Set()..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer())),
                  mapType: currentMapType,
                  initialCameraPosition: cam_pos,
                  
                  onMapCreated: (GoogleMapController controller) {
                    if (!_controller.isCompleted) {
                      _controller.complete(controller);
                      mapController = controller;
                      String servicesNamee="";
                       servicesNamee = widget.servicesName;
                      str_service = servicesNamee;
                      performNearbySearch(controller, servicesNamee);
                    }
                  },
  
                  markers: markers,
                ),
              ),
            ],
          ),
          SizedBox(height: widthNHeight0(context, 0) * 0.05),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xff1A3166), borderRadius: BorderRadius.circular(20)),
            height: widthNHeight0(context, 0) * 0.13,
            width: widthNHeight0(context, 1) * 0.85,
            child: Text(

              "You can see all the \n$str_service near you",
              style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Kadwa'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  double _getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.6;
  }

  Future<void> performNearbySearch(GoogleMapController controller, String placeType) async {
    LatLng currentPosition = LatLng(widget.lon, widget.lat);
placeType=str_service;
    final Marker currentMarker = Marker(
      markerId: MarkerId("currentPosition"),
      position: currentPosition,
      infoWindow: InfoWindow(title: "Current Position"),
      onTap: () {},
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    );

    markers.add(currentMarker);

    final String endpoint =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${currentPosition.latitude},${currentPosition.longitude}&radius=5000&type=$str_service&key=$mapKey';

    final http.Response response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);

      if (data['results'] != null) {
        for (var place in data['results']) {
          final Marker marker = Marker(
            markerId: MarkerId(place['place_id']),
            position: LatLng(
              place['geometry']['location']['lat'],
              place['geometry']['location']['lng'],
            ),
            infoWindow: InfoWindow(title: place['name'] ?? ""),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          );

          markers.add(marker);
        }

        setState(() {});
      }
    }
  }

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(size: Size(0.1, 0.1)), 'assets/images/png_pic/marker_home')
        .then((onValue) {
      myIcon = onValue;
    });

    cam_pos = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(widget.lon, widget.lat),
      tilt: 0,
      zoom: 19,
    );
    super.initState();
  }
}


