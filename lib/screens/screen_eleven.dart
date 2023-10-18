import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/eleven_page_widget.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';

class ScreenEleven extends StatefulWidget {
  const ScreenEleven({super.key});

  @override
  State<ScreenEleven> createState() => _ScreenElevenState();
}

class _ScreenElevenState extends State<ScreenEleven> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 45),
            child: Row(
              children: [
                IconArrow(
                    iconSvg: 'assets/arrowleft.svg',
                    onChanged: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(width: 104),
                const Text('Address', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)))
              ],
            ),
          ),
          const SizedBox(height: 25),
          const ElevenPageWidget(textName: 'Name', hintText: 'Mrh Raju'),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ElevenPageWidget1(textName1: 'Country', hintText1: 'Bangladesh'), ElevenPageWidget1(textName1: 'City', hintText1: 'Sylhet')],
            ),
          ),
          const SizedBox(height: 15),
          const ElevenPageWidget(textName: 'Phone Number', hintText: '+880 1453-987533'),
          const SizedBox(height: 15),
          const ElevenPageWidget(textName: 'Address', hintText: 'Chhatak, Sunamgonj 12/8AB'),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Save as primary address',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                ),
                Switch(
                  activeColor: const Color(0xFF4BC76D),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 157),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'screenTwelve');
            },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Save Address',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
