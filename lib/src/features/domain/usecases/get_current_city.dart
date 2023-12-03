import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/domain/repositories/geolocator_repository.dart';

class GetCurrentCityUseCase{
  final GeoLocatorRepository geoLocatorRepository;

  GetCurrentCityUseCase(this.geoLocatorRepository);

  Future<Either<Failure, String>> execute() {
    return geoLocatorRepository.getCurrentCity();
  }
}