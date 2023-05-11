import 'package:flutter/material.dart';
import 'package:first_application/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 175, 175, 178),
          Color.fromARGB(255, 68, 9, 204)
        ]),
      ),
    ),
  );
}
