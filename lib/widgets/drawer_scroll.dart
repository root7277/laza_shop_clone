import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerScroll extends StatefulWidget {
  final String svg;
  final String svgName;
  const DrawerScroll({super.key, required this.svg, required this.svgName});

  @override
  State<DrawerScroll> createState() => _DrawerScrollState();
}

class _DrawerScrollState extends State<DrawerScroll> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          SvgPicture.asset(widget.svg),
          const SizedBox(width: 10),
          Text(
            widget.svgName,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF1D1E20)),
          ),
        ],
      ),
    );
  }
}
