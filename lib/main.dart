import 'package:flutter/material.dart';
import 'package:laza_shop_clone/screens/screen_one.dart';
import 'package:laza_shop_clone/screens/screen_two.dart';
import 'package:laza_shop_clone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'screenOne':(context) => const ScreenOne(),
        'screenTwo':(context) => const ScreenTwo(),
      },
    );
  }
}