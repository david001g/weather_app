import 'package:dartz/dartz.dart';

abstract class GeoLocatorDataSource {
  Future<String> getCurrentCity();
}