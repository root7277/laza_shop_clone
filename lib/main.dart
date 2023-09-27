import 'package:flutter/material.dart';
import 'package:laza_shop_clone/screens/screen_eight.dart';
import 'package:laza_shop_clone/screens/screen_fiwe.dart';
import 'package:laza_shop_clone/screens/screen_four.dart';
import 'package:laza_shop_clone/screens/screen_nine.dart';
import 'package:laza_shop_clone/screens/screen_one.dart';
import 'package:laza_shop_clone/screens/screen_seven.dart';
import 'package:laza_shop_clone/screens/screen_six.dart';
import 'package:laza_shop_clone/screens/screen_tree.dart';
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
        'screenOne': (context) => const ScreenOne(),
        'screenTwo': (context) => const ScreenTwo(),
        'screenTree': (context) => const ScreenTree(),
        'screenFour': (context) => const ScreenFour(),
        'screenFiwe': (context) => const ScreenFiwe(),
        'screenSix': (context) => const ScreenSix(),
        'screenSeven': (context) => const ScreenSeven(),
        'screenEight': (context) => const ScreenEight(),
        'screenNine': (context) => const ScreenNine(),
      },
    );
  }
}
