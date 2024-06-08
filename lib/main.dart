import 'package:flutter/material.dart';
import 'package:gym_app/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      home: Landing(),
    );
  }
}
