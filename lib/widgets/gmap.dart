import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Gmap extends StatelessWidget {
  const Gmap({
    Key? key,
    required this.lat,
    required this.lng,
  }) : super(key: key);
  final double lat, lng;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: GoogleMap(
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        initialCameraPosition:
            CameraPosition(target: LatLng(lat, lng), zoom: 20),
      ),
    );
  }
}
