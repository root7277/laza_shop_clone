import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/code_selection.dart';


class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
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
          ),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Verification Code', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/cloud.svg'),
            ],
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CodeSelection(text: '4'),
                CodeSelection(text: '7'),
                CodeSelection(text: '9'),
                CodeSelection(text: '5'),
              ],
            ),
          ),
          const SizedBox(height: 140),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('00:20 resend confirmation code.', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'screenSeven');
                },
                child: Container(
                  width: 375,
                  padding: const EdgeInsets.only(bottom: 40),
                  decoration: const BoxDecoration(
                    color: Color(0xFF9775FA),
                  ),
                  child: const Center(
                    child: Text(
                      'Confirm Code',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
                    ),
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