import 'dart:convert';
import 'package:animatedapp/models/locationmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherData {
  Future<Weather> getData(var latitude, var longitude) async {
    var uricall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=1bc0383d81444b58b1432929200711&q=Kathmandu');
    var response = await http.get(uricall);
    var body = jsonDecode(response.body);
    return Weather.fromjson(body);
  }
}
