// import 'package:flutter_application_2/repositories/geolocation/base_geolocation_repository%20copy.dart';

import '../repositories.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationRepository extends BaseGeolocationRepository {
  GeolocationRepository();
  @override
  Future<Position> getCurrentLocation() async { //ghi đè phương thức của getCurrentLocation của BaseGeolocationRepository
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    } 
    //gói định vị                xác định độ chính xác cao
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
