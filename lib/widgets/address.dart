import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartAddress extends StatefulWidget {
  final String txt;
  const CartAddress({super.key, required this.txt});

  @override
  State<CartAddress> createState() => _CartAddressState();
}

class _CartAddressState extends State<CartAddress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.txt, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
          InkWell(child: SvgPicture.asset('assets/arrow_rigth.svg')),
        ],
      ),
    );
  }
}
