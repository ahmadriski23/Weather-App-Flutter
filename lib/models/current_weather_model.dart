// To parse this JSON data, do
//
//     final currentWeatherData = currentWeatherDataFromJson(jsonString);

import 'dart:convert';

CurrentWeatherData currentWeatherDataFromJson(String str) =>
    CurrentWeatherData.fromJson(json.decode(str));

class CurrentWeatherData {
  CurrentWeatherData({
    required this.weather,
    required this.main,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.name,
  });

  List<Weather> weather;
  Main main;
  Wind wind;
  Clouds clouds;
  int dt;
  String name;

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) =>
      CurrentWeatherData(
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        main: Main.fromJson(json["main"]),
        wind: Wind.fromJson(json["wind"]),
        clouds: Clouds.fromJson(json["clouds"]),
        dt: json["dt"],
        name: json["name"],
      );
}

class Clouds {
  Clouds({
    required this.all,
  });

  int all;

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class Main {
  Main({
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
  });

  int temp;
  int tempMin;
  int tempMax;
  int humidity;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toInt(),
        tempMin: json["temp_min"]?.toInt(),
        tempMax: json["temp_max"]?.toInt(),
        humidity: json["humidity"],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "humidity": humidity,
      };
}

class Weather {
  Weather({
    required this.main,
    required this.icon,
  });

  String main;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        main: json["main"],
        icon: json["icon"],
      );
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  double speed;
  int deg;
  double gust;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };
}
