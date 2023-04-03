import 'package:animatedapp/geolocator/geolocator.dart';
import 'package:animatedapp/globals/appimages.dart';
import 'package:animatedapp/network/weathereport.dart';
import 'package:animatedapp/widgets/weatherfeatures.dart';
import 'package:animatedapp/widgets/weatherhead.dart';
import 'package:animatedapp/widgets/weatherstatics.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var client = WeatherData();
  // ignore: prefer_typing_uninitialized_variables
  var data;
  info() async {
    // var position = await GetPosition();
    data = await client.getData('27.72', '85.32');
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: FutureBuilder(
            future: info(),
            builder: (context, snapshot) {
              return Column(
                children: [
                  Weatherhead(data: data),
                  const SizedBox(
                    height: 20,
                  ),
                  Weatherfeatures(data: data),
                  const SizedBox(
                    height: 20,
                  ),
                  Weatherstatics(data: data),
                ],
              );
            }));
  }
}
