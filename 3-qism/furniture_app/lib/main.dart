import 'package:flutter/material.dart';

import '/screens/home_screen.dart';
import '/screens/splash_screen.dart';
import '/screens/furniture_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furnite app',
      routes: {
        '/': (_) => const SplashScreen(),
        '/home': (_) => const HomeScreen(),
      },
    );
  }
}
