import 'package:weather_app/src/features/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {

  Future<WeatherModel> getCurrentWeather(String cityName);
}
