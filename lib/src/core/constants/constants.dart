class Urls {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String apiKey = '2ed5da33c8bfde0c38f7c6d25dfa9f6f';
  static String currentWeatherByName(String city) =>
      '$baseUrl/weather?q=$city&appid=$apiKey';
  static String weatherIcon(String iconCode) =>
      'http://openweathermap.org/img/wn/$iconCode@2x.png';
}

class Lotties{
  static const String clearSky = 'assets/clear_sky.json';
  static const String fewClouds = 'assets/clouds.json';
  static const String scatteredClouds = 'assets/only_clouds.json';
  static const String brokenClouds = 'assets/mist.json';
  static const String showerRain = 'assets/rain.json';
  static const String rain = 'assets/rain.json';
  static const String thunderstorm = 'assets/thunder.json';
  static const String snow = 'assets/snow.json';
  static const String mist = 'assets/mist.json';
}

class SvgAssets {
  static const String bloc = 'assets/technologies/bloc.svg';
  static const String codeMagic = 'assets/technologies/code_magic.svg';
  static const String cleanArchitecture = 'assets/technologies/clean_architecture.png';
  static const String firebase = 'assets/technologies/firebase.svg';
  static const String github = 'assets/technologies/github.svg';
  static const String routing = 'assets/technologies/routing.svg';
  static const String dependencyInjection = 'assets/technologies/dependency_injection.svg';
  static const String test = 'assets/technologies/test.svg';
  static const String http = 'assets/technologies/http.svg';

}