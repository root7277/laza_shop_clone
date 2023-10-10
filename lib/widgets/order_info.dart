import 'package:flutter/material.dart';

class OrderInfo extends StatefulWidget {
  final String subtotal;
  final String price;
  const OrderInfo({super.key, required this.subtotal, required this.price});

  @override
  State<OrderInfo> createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(widget.subtotal, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))), Text(widget.price, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)))],
      ),
    );
  }
}
