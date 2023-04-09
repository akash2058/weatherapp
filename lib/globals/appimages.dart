import 'package:flutter/material.dart';

class Appimage {
  static Image weatherbackgroundimage =
      const Image(image: AssetImage('assets/weatherbackgroundimage.jpeg'));

  static Image sunnyicon = const Image(image: AssetImage('assets/sunny.jpg'));
  static Image windicon = const Image(
      color: Colors.transparent,
      height: 50,
      image: AssetImage('assets/wind.jpg'));
  static Image directionicon =
      const Image(height: 50, image: AssetImage('assets/direction.jpg'));
  static Image humidityicon =
      const Image(height: 50, image: AssetImage('assets/humidity.jpg'));
}
