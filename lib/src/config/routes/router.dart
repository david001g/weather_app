import 'package:go_router/go_router.dart';
import 'package:weather_app/src/features/presentation/pages/about_page.dart';
import 'package:weather_app/src/features/presentation/pages/home_page.dart';

enum AppRoutes {
  home,
  about,
}

final goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: AppRoutes.home.name,
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        path: 'about',
        name: AppRoutes.about.name,
        builder: (context, state) => const AboutPage(),
      ),
    ],
  ),
]);
