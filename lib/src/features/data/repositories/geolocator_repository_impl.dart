import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/exception.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/data/datasources/geolocator/geolocator_datasource.dart';
import 'package:weather_app/src/features/domain/repositories/geolocator_repository.dart';

class GeoLocatorRepositoryImpl implements GeoLocatorRepository {

  GeoLocatorDataSource geoLocatorDataSource;

  GeoLocatorRepositoryImpl({required this.geoLocatorDataSource});

  @override
  Future<Either<Failure, String>> getCurrentCity() async {
    try{
      final result = await geoLocatorDataSource.getCurrentCity();
      return Right(result);
    } on GeolocatorException catch (e) {
      return Left(GeoLocatorFailure(e.message!));
    }
  }
}
