import 'package:animatedapp/geolocator/geolocator.dart';
import 'package:animatedapp/globals/appimages.dart';
import 'package:animatedapp/network/weathereport.dart';
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
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.purple])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${data.localtime}',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${data?.name}',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${data.country}',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.network('https:${data.icon}'),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            '${data.text}',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            '${data.temp}',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                children: [
                                  Appimage.windicon,
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${data.wind_kph}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Appimage.humidityicon,
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('${data.humidity}',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Appimage.directionicon,
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('${data.wind_dir}',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text('Wind degree',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data.wind_degree}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('Pressure mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data.pressure_mb}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('pressure in',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data?.pressure_in}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text('Gust',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data.gust_mph}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          const Text('feelslike_C',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data.feelslike_c}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          const Text('feelslike_F',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          Text('${data.feelslike_f}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      )),
                    ],
                  ),
                ],
              );
            }));
  }
}
