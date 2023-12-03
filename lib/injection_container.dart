import 'package:get_it/get_it.dart';
import 'package:weather_app/src/features/data/datasources/remote/remote_datasource.dart';
import 'package:weather_app/src/features/data/datasources/remote/remote_datasource_impl.dart';
import 'package:weather_app/src/features/data/geolocator/geolocator_datasource.dart';
import 'package:weather_app/src/features/data/geolocator/geolocator_datasource_impl.dart';
import 'package:weather_app/src/features/data/repositories/geolocator_repository_impl.dart';
import 'package:weather_app/src/features/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/src/features/domain/repositories/geolocator_repository.dart';
import 'package:weather_app/src/features/domain/repositories/weather_repository.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_city.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_weather.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void setupLocator() {
  // bloc
  locator.registerFactory(() => WeatherBloc(locator(), locator()));

  // usecase
  locator.registerLazySingleton(() => GetCurrentWeatherUseCase(locator()));
  locator.registerLazySingleton(() => GetCurrentCityUseCase(locator()));

  // repository
  locator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(weatherRemoteDataSource: locator()),
  );
  locator.registerLazySingleton<GeoLocatorRepository>(
    () => GeoLocatorRepositoryImpl(geoLocatorDataSource: locator()),
  );

  // data source
  locator.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(
      client: locator(),
    ),
  );
  locator.registerLazySingleton<GeoLocatorDataSource>(
    () => GeoLocatorDataSourceImpl(),
  );

  // external
  locator.registerLazySingleton(() => http.Client());
}
