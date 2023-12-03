import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';
import 'package:weather_app/src/features/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {

  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure,WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}