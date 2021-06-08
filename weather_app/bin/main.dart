import 'weather_api_client.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
  }
  final city = args.first;
  final api = WeatherApiClient();
  try {
    final weather = await api.getWeather(city);
    print(weather);
  } catch (e) {
    print(e);
  }
}
