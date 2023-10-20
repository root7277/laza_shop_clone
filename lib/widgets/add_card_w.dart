import 'package:flutter/material.dart';

class AddCardWidget extends StatefulWidget {
  final String cardIcon;
  const AddCardWidget({super.key, required this.cardIcon});

  @override
  State<AddCardWidget> createState() => _AddCardWidgetState();
}

class _AddCardWidgetState extends State<AddCardWidget> {
  bool onOff = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          onOff = !onOff;
        });
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF5F6FA),
          border: onOff ? Border.all(width: 1, color: const Color(0xFFFF5F00)) : Border.all(width: 1, color: const Color(0xFFF5F6FA)),
        ),
        child: Center(
          child: Image.asset(widget.cardIcon),
        ),
      ),
    );
  }
}
