import 'package:flutter/material.dart';

class LongWidget extends StatelessWidget {
  const LongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xffeeee00), // Yellow
          height: 600.0,
          alignment: Alignment.center,
          child: const Text('Fixed Height Content'),
        ),
        Container(
          color: const Color(0xff008000), // Green
          height: 600.0,
          alignment: Alignment.center,
          child: const Text('Fixed Height Content'),
        ),
      ],
    );
  }
}