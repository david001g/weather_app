import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_city.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_weather.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_event.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetCurrentCityUseCase _getCurrentCityUseCase;
  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;

  WeatherBloc(this._getCurrentWeatherUseCase, this._getCurrentCityUseCase) : super(WeatherEmpty()) {
    on<OnCityChanged>(
      (event, emit) async {
        emit(WeatherLoading());
        final result = await _getCurrentWeatherUseCase.execute(event.cityName);
        result.fold(
          (failure) {
            emit(WeatherLoadFailure(failure.message));
          },
          (data) {
            emit(WeatherLoaded(data));
          },
        );
      },
      transformer: debounce(const Duration(milliseconds: 500)),
    );
    on<OnGetCityName>(
      (event, emit) async {
        emit(WeatherLoading());
        final cityName = await _getCurrentCityUseCase.execute();
        await cityName.fold(
          (failure) {
            emit(WeatherLoadFailure(failure.message));
          },
          (data) async {
            final result = await _getCurrentWeatherUseCase.execute(data);
            result.fold(
              (failure) {
                emit(WeatherLoadFailure(failure.message));
              },
              (data) {
                emit(WeatherLoaded(data));
              },
            );
          },
        );
      },
      transformer: debounce(const Duration(milliseconds: 500)),
    );
  }
}

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}
