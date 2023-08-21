import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/text_feild.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
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
            Text('New Password', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 152),
        const TextFeildWidget(hintText: 'Esther Howard', label: 'Password'),
        const SizedBox(height: 20),
        const TextFeildWidget(hintText: 'bill.sanders@example.com', label: 'Confirm Password'),
        const SizedBox(height: 260),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please write your new password.', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
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
                    'Reset Password',
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