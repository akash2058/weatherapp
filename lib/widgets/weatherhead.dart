import 'package:flutter/material.dart';

import '../globals/appimages.dart';

class Weatherhead extends StatelessWidget {
  const Weatherhead({
    super.key,
    required this.data,
  });

  // ignore: prefer_typing_uninitialized_variables
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(colors: [Colors.blue, Colors.purple])),
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.orange),
                      onPressed: () {},
                      child: const Icon(Icons.search)),
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter Location',
                ),
              ),
            ),
            Text(
              '${data.localtime}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${data?.name}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${data.country}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network('https:${data.icon}'),
            const SizedBox(
              height: 20,
            ),
            Text(
              style: const TextStyle(color: Colors.white, fontSize: 20),
              '${data.text}',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              style: const TextStyle(color: Colors.white, fontSize: 20),
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
                        style: const TextStyle(color: Colors.white)),
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
                        style: const TextStyle(color: Colors.white)),
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
