import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/text_feild.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  bool? isChecked = false;
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
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 45,
                height: 45,
                decoration: const BoxDecoration(color: Color(0xFFF5F6FA), borderRadius: BorderRadius.all(Radius.circular(50))),
                child: SvgPicture.asset('assets/arrow.svg'),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please enter your data to continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
            ],
          ),
          const SizedBox(height: 152),
          const TextFeildWidget(hintText: 'Esther Howard', label: 'Username'),
          const SizedBox(height: 20),
          const TextFeildWidget(hintText: 'HJ@#9783kja', label: 'Password'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'screenFiwe');
                  },
                  child: const Text('Forgot password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFEA4335))),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Remember me', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
                Checkbox(
                    activeColor: Colors.green,
                    value: isChecked,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Center(child: Text('Login', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))),
                            backgroundColor: const Color(0xFF9775FA),
                            padding: const EdgeInsets.only(bottom: 40),
                            onVisible: () {
                              Navigator.pushNamed(context, 'screenEight');
                            },
                          ),
                        );
                      });
                    }),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('By connecting your account confirm that you agree', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('with our', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              SizedBox(width: 3),
              Text('Term and Condition', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
            ],
          ),
        ],
      ),
    );
  }
}
