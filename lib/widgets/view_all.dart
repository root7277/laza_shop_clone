import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {
  final String textLeading;
  final String textTraeling;
  const ViewAll({super.key, required this.textLeading, required this.textTraeling});

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.textLeading,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
        ),
        Text(
          widget.textTraeling,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)),
        ),
      ],
    );
  }
}
