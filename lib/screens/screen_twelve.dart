import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/eleven_page_widget.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';

class ScreenTwelve extends StatefulWidget {
  const ScreenTwelve({super.key});

  @override
  State<ScreenTwelve> createState() => _ScreenTwelveState();
}

class _ScreenTwelveState extends State<ScreenTwelve> {
  bool isSwitched1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    IconArrow(
                        iconSvg: 'assets/arrowleft.svg',
                        onChanged: () {
                          Navigator.pop(context);
                        }),
                    const SizedBox(width: 90),
                    const Text('Payment', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)))
                  ],
                ),
              ),
              const SizedBox(height: 180),
              Container(
                width: 335,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF6F2FF), border: Border.all(width: 1, color: const Color(0xFF9775FA))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/Plus.svg'),
                    const SizedBox(width: 5),
                    TextButton(
                      child: const Text(
                        'Add new card',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF9775FA)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'addCard');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ElevenPageWidget(textName: 'Card Owner', hintText: 'Mrh Raju'),
              const SizedBox(height: 15),
              const ElevenPageWidget(textName: 'Card Number', hintText: '5254 7634 8734 7690'),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ElevenPageWidget1(textName1: 'EXP', hintText1: '24/24'), ElevenPageWidget1(textName1: 'CVV', hintText1: '7763')],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Save card info',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                    ),
                    Switch(
                      activeColor: const Color(0xFF4BC76D),
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 27),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'saveCard');
                },
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Save Card',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
