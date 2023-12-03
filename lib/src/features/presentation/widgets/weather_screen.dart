import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/src/config/routes/router.dart';
import 'package:weather_app/src/core/constants/constants.dart';
import 'package:weather_app/src/features/domain/entities/weather_entity.dart';

class WeatherScreen extends StatelessWidget {
  final WeatherEntity weatherEntity;
  late String lottieAsset;

  WeatherScreen({super.key, required this.weatherEntity}) {
    switch (weatherEntity.main) {
      case 'Clear':
        lottieAsset = Lotties.clearSky;
        break;
      case 'Clouds':
        lottieAsset = Lotties.fewClouds;
        break;
      case 'Rain':
        lottieAsset = Lotties.rain;
        break;
      case 'Thunderstorm':
        lottieAsset = Lotties.thunderstorm;
        break;
      case 'Snow':
        lottieAsset = Lotties.snow;
        break;
      case 'Mist':
        lottieAsset = Lotties.mist;
        break;
      case 'Haze':
        lottieAsset = Lotties.mist;
        break;
      default:
        lottieAsset = Lotties.mist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.location_on),
        Gap(10.h),
        Text(
          weatherEntity.cityName.toUpperCase(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Gap(80.h),
        Lottie.asset(lottieAsset),
        Gap(80.h),
        Text(
          ' ${weatherEntity.temperatureCelcius}°',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Gap(10.h),
        ElevatedButton(
            onPressed: () => context.pushNamed(AppRoutes.about.name),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150.w, 10.h),
            ),
            child: Text(
              'About the app',
              style: Theme.of(context).textTheme.labelMedium,
            ))
      ],
    );
  }
}
