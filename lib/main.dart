import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradiantContainer(
            Color.fromARGB(255, 9, 6, 34), Color.fromARGB(255, 21, 236, 226)),
      ),
    ),
  );
}
