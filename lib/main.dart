import 'package:flutter/material.dart';
import 'package:weather_app/injection_container.dart';
import 'package:weather_app/src/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/features/presentation/bloc/weather_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => locator<WeatherBloc>(),
      ),
    ],
    child: const MyApp());
  }
}
