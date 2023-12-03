import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:weather_app/src/features/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/features/data/geolocator/geolocator_datasource.dart';
import 'package:weather_app/src/features/domain/repositories/geolocator_repository.dart';
import 'package:weather_app/src/features/domain/repositories/weather_repository.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_city.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_weather.dart';


@GenerateMocks(
  [
    WeatherRepository,
    WeatherRemoteDataSource,
    GetCurrentWeatherUseCase,
    GeoLocatorRepository,
    GeoLocatorDataSource,
    GetCurrentCityUseCase,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)

void main() {}