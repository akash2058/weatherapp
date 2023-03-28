import 'package:flutter/material.dart';

class Weather {
  var name;
  var country;
  var icon;
  var lat;
  var lon;
  var tz_id;
  var localtime;
  var humidity;
  var gust_mph;
  var pressure_in;
  var pressure_mb;
  var feelslike_c;
  var feelslike_f;
  var wind_kph;
  var wind_degree;
  var temp;
  var condition;
  var text;
  var wind_dir;
  Weather(
      {required this.name,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tz_id,
      required this.localtime,
      required this.humidity,
      required this.pressure_in,
      required this.pressure_mb,
      required this.feelslike_c,
      required this.feelslike_f,
      required this.gust_mph,
      required this.wind_kph,
      required this.wind_degree,
      required this.icon,
      required this.temp,
      required this.condition,
      required this.text,
      required this.wind_dir});
  Weather.fromjson(Map<String, dynamic> json) {
    name = json['location']['name'];
    icon = json['current']['condition']['icon'];
    country = json['location']['country'];
    humidity = json['current']['humidity'];
    lat = json['location']['lat'];
    lon = json['location']['lot'];
    feelslike_c = json['current']['feelslike_c'];
    feelslike_f = json['current']['feelslike_f'];
    gust_mph = json['current']['gust_mph'];
    wind_kph = json['current']['wind_kph'];
    wind_degree = json['current']['wind_degree'];
    temp = json['current']['temp_c'];
    condition = json['current']['condition'];
    text = json['current']['condition']['text'];
    wind_dir = json['current']['wind_dir'];
    localtime = json['location']['localtime'];
    pressure_in = json['current']['pressure_in'];
    pressure_mb = json['current']['pressure_mb'];
  }
}
