import 'package:flutter/material.dart';

class ElevenPageWidget extends StatefulWidget {
  final String textName;
  final String hintText;
  const ElevenPageWidget({super.key, required this.textName, required this.hintText});

  @override
  State<ElevenPageWidget> createState() => _ElevenPageWidgetState();
}

class _ElevenPageWidgetState extends State<ElevenPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              widget.textName,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 335,
            height: 50,
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F6FA),
            ),
            child: TextField(
              decoration: InputDecoration(hintText: widget.hintText, hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)), border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

class ElevenPageWidget1 extends StatefulWidget {
  final String textName1;
  final String hintText1;
  const ElevenPageWidget1({super.key, required this.textName1, required this.hintText1});

  @override
  State<ElevenPageWidget1> createState() => _ElevenPageWidget1State();
}

class _ElevenPageWidget1State extends State<ElevenPageWidget1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            widget.textName1,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 140,
          height: 50,
          padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF5F6FA),
          ),
          child: TextField(
            decoration: InputDecoration(hintText: widget.hintText1, hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)), border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
