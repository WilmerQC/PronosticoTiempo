class Weather {
  final String cityName;
  final String temperature;
  final String mainContion;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainContion,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainContion: json['weather']['0']['main'],
    );
  }
}