import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';

abstract class WeatherRepository {

  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}