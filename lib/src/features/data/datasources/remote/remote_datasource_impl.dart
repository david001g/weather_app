import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/src/core/constants/constants.dart';
import 'package:weather_app/src/core/error/exception.dart';
import 'package:weather_app/src/features/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/features/data/models/weather_model.dart';

class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSourceImpl({required this.client});

  @override
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final response = await client.get(Uri.parse(Urls.currentWeatherByName(cityName)));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

}
