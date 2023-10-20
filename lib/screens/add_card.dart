import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/add_card_w.dart';
import 'package:laza_shop_clone/widgets/eleven_page_widget.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
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
                const SizedBox(width: 75),
                const Text('Add New Card', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)))
              ],
            ),
          ),
          const SizedBox(height: 35),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddCardWidget(cardIcon: 'assets/master_card.png'),
                AddCardWidget(cardIcon: 'assets/paypal.png'),
                AddCardWidget(cardIcon: 'assets/humo.png'),
              ],
            ),
          ),
          const SizedBox(height: 30),
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
          const SizedBox(height: 234),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Add Card',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
