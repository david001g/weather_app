import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_event.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_state.dart';
import 'package:weather_app/src/features/presentation/widgets/weather_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<WeatherBloc>().add(const OnGetCityName());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                case WeatherEmpty:
                  return const Center(
                    child: Text('Waiting for location...'),
                  );
                case WeatherLoading:
                  return const Center(child: CircularProgressIndicator());
                case WeatherLoaded:
                  return WeatherScreen(weatherEntity: state.props[0] as WeatherEntity);
                case WeatherLoadFailure:
                  return const Center(
                    child: Text('Something went wrong'),
                  );
                default:
                  return const Center(
                    child: Text('Something went wrong'),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
