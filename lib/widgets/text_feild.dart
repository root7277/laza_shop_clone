import 'package:flutter/material.dart';

class TextFeildWidget extends StatefulWidget {
  final String hintText;
  final String label;
  const TextFeildWidget({super.key, required this.hintText, required this.label});

  @override
  State<TextFeildWidget> createState() => _TextFeildWidgetState();
}

class _TextFeildWidgetState extends State<TextFeildWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
          label: Text(widget.label),
          labelStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))
        ),
      ),
    );
  }
}