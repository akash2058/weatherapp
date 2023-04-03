import 'package:flutter/material.dart';

class Weatherstatics extends StatelessWidget {
  const Weatherstatics({
    super.key,
    required this.data,
  });

  final data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Text('Gust', style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.gust_mph}',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('feelslike_C',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.feelslike_c}',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
        Expanded(
            child: Column(
          children: [
            const Text('feelslike_F',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Text('${data.feelslike_f}',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        )),
      ],
    );
  }
}
