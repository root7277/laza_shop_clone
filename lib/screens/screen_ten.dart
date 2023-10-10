import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/address.dart';
import 'package:laza_shop_clone/widgets/cart.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({super.key});

  @override
  State<ScreenTen> createState() => _ScreenTenState();
}

class _ScreenTenState extends State<ScreenTen> {
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
                const Text('Cart', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)))
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return const Cart();
                })),
          ),
          const SizedBox(height: 20),
          const CartAddress(txt: 'Delivery Address'),
        ],
      ),
    );
  }
}
