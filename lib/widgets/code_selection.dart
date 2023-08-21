import 'package:flutter/material.dart';

class CodeSelection extends StatefulWidget {
  final String text;
  const CodeSelection({super.key, required this.text});

  @override
  State<CodeSelection> createState() => _CodeSelectionState();
}

class _CodeSelectionState extends State<CodeSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 98,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color(0xFFE7E8EA),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(widget.text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
        // child: TextField(
        //   keyboardType: TextInputType.number,
        //   decoration: InputDecoration(
        //     hintText: widget.text,
        //     hintStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
        //   ),
        // ),
      ),
    );
  }
}