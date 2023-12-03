import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/failure.dart';

abstract class GeoLocatorRepository {
  Future<Either<Failure, String>> getCurrentCity();
}