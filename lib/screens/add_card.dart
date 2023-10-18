import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
