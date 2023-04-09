import 'package:flutter/material.dart';

class Weatherstatics extends StatelessWidget {
  const Weatherstatics({
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
            const Text('Gust',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.gust_mph}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('feelslike_C',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.feelslike_c}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('feelslike_F',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.feelslike_f}',
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
      ],
    );
  }
}
