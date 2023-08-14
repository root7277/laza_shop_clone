import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_shop_clone/widgets/regester_selection.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F6FA),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: SvgPicture.asset('assets/arrow.svg'),
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Let’s Get Started', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
            ],
          ),
          const SizedBox(height: 185),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RegesterSelection(image: 'assets/facebook.svg', title: 'Facebook', colorR: Color(0xFF4267B2)),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RegesterSelection(image: 'assets/twitter.svg', title: 'Twitter', colorR: Color(0xFF1DA1F2)),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RegesterSelection(image: 'assets/google.svg', title: 'Google', colorR: Color(0xFFEA4335)),
          ),
        ],
      ),
    );
  }
}