import 'package:flutter/material.dart';

class Weatherfeatures extends StatelessWidget {
  const Weatherfeatures({
    super.key,
    required this.data,
  });

  // ignore: prefer_typing_uninitialized_variables
  final data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            const Text('Wind degree',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.wind_degree}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('Pressure mb',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.pressure_mb}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('pressure in',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data?.pressure_in}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
      ],
    );
  }
}
