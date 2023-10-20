import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';

class SaveCardScreen extends StatefulWidget {
  const SaveCardScreen({super.key});

  @override
  State<SaveCardScreen> createState() => _SaveCardScreenState();
}

class _SaveCardScreenState extends State<SaveCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                IconArrow(
                  iconSvg: 'assets/arrowleft.svg',
                  onChanged: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 116),
          Center(
            child: SvgPicture.asset('assets/save_card.svg'),
          ),
          const SizedBox(height: 40.46),
          const Center(
            child: Text(
              'Order Confirmed!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Your order has been confirmed, we will send\n you confirmation email shortly.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)),
            ),
          ),
          const SizedBox(height: 121.5),
          const Center(
            child: Text(
              'Go to Orders',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF8F959E)),
            ),
          ),
          const SizedBox(height: 45),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'screenEight');
            },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Continue Shopping',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
