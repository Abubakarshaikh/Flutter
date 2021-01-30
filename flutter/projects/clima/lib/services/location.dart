import 'package:geolocator/geolocator.dart';
class Location {
  double latitude; // create latitude varible for getting latitude from getCurrentLocation function
  double longitude; // create longitude varible for getting longitude from getCurrentLocation function
  Future<void> getCurrentLocation() async {

    // try use for TRUE
    try {
      // Position give us, latitude, longitude, altitude, speed, speedAccuracy
      // Geolocator is class and > getCurrentPosition is a 
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    
    }
    
    // catch use for FALSE 
    catch (e) {
      print(e);
    }
  }
}