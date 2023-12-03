class ServerException implements Exception {}

class GeolocatorException implements Exception {
  String? message;

  GeolocatorException({this.message});
}