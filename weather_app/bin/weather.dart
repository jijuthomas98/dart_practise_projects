class Weather {
  const Weather({
    required this.weatherState,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
    required this.humidity,
  });

  final String weatherState;
  final double minTemp;
  final double maxTemp;
  final double temp;
  final int humidity;

  factory Weather.fromJson(Map<String, Object?> json) => Weather(
        weatherState: json['weather_state_name'] as String,
        minTemp: json['min_temp'] as double,
        maxTemp: json['max_temp'] as double,
        temp: json['the_temp'] as double,
        humidity: json['humidity'] as int,
      );

  @override
  String toString() => ''' 
  Current Temp : $temp °C
  Condition : $weatherState
  Maximum Temp : $maxTemp °C
  Minimum Temp : $minTemp °C
  Humidity : $humidity
  ''';
}
