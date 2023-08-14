import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/gender_selection.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9775FA),
      body: Stack(
        children: [
          Image.asset('assets/person.png'),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              height: 244,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text('Look Good, Feel Good', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                  ),
                  const SizedBox(height: 10),
                  const Text('Create your individual & unique style and\n look amazing everyday.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                  const SizedBox(height: 20),
                  const GenderSelection(),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'screenTwo');
                    }, 
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF8F959E)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}