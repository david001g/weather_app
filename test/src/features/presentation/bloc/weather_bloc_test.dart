import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:weather_app/src/core/error/failure.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_event.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_state.dart';
import 'package:bloc_test/bloc_test.dart';

import '../../../../helpers/test_helper.mocks.dart';


void main() {

  late MockGetCurrentWeatherUseCase mockGetCurrentWeatherUseCase;
  late MockGetCurrentCityUseCase mockGetCurrentCityUseCase;
  late WeatherBloc weatherBloc;

  setUp(() {
    mockGetCurrentWeatherUseCase = MockGetCurrentWeatherUseCase();
    mockGetCurrentCityUseCase = MockGetCurrentCityUseCase();
    weatherBloc = WeatherBloc(mockGetCurrentWeatherUseCase,mockGetCurrentCityUseCase);
  });

  const testWeather = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const testCityName = 'New York';

  test(
      'initial state should be empty',
          () {
        expect(weatherBloc.state, WeatherEmpty());
      }
  );


  blocTest<WeatherBloc,WeatherState>(
      'should emit [WeatherLoading, WeatherLoaded] when data is gotten successfully',
      build: () {
        when(
            mockGetCurrentWeatherUseCase.execute(testCityName)
        ).thenAnswer((_) async => const Right(testWeather));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const OnCityChanged(testCityName)),
      wait: const Duration(milliseconds: 500),
      expect: () => [
        WeatherLoading(),
        const WeatherLoaded(testWeather)
      ]
  );


  blocTest<WeatherBloc,WeatherState>(
      'should emit [WeatherLoading, WeatherLoadFailure] when get data is unsuccessful',
      build: () {
        when(
            mockGetCurrentWeatherUseCase.execute(testCityName)
        ).thenAnswer((_) async => const Left(ServerFailure('Server failure')));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const OnCityChanged(testCityName)),
      wait: const Duration(milliseconds: 500),
      expect: () => [
        WeatherLoading(),
        const WeatherLoadFailure('Server failure'),
      ]
  );


}