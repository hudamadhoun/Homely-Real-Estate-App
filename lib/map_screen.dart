import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  static const String screenRoute = 'map_screen';

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomeMarker();
  }

  void setCustomeMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/icon.png');
  }
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(22.5448131, 88.3403691),
            icon: mapMarker,
            infoWindow: InfoWindow(
              title: 'Palestine',
              snippet: 'Gaza',
            )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(22.5448131, 88.3403691),
              zoom: 15,
            )));
  }
}
