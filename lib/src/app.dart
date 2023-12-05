import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/src/config/themes/dark_theme.dart';
import 'package:weather_app/src/config/themes/light_theme.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_event.dart';

import 'config/routes/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<WeatherBloc>().add(const OnGetCityName());
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        themeMode: ThemeMode.light,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
