import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:weather_app/src/core/error/exception.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';
import 'package:weather_app/src/features/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepositoryImpl({required this.weatherRemoteDataSource});

  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName) async {
    try {
      final result = await weatherRemoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
