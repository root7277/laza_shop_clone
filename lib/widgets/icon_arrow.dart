import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconArrow extends StatefulWidget {
  final String iconSvg;
  final void Function()? onChanged;
  const IconArrow({super.key, required this.iconSvg, required this.onChanged});

  @override
  State<IconArrow> createState() => _IconArrowState();
}

class _IconArrowState extends State<IconArrow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onChanged,
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
        ),
        child: SvgPicture.asset(widget.iconSvg),
      ),
    );
  }
}
