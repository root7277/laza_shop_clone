import 'package:flutter/material.dart';

class ClothesSize extends StatelessWidget {
  const ClothesSize({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClothesSizeContainer(size: 'S'),
          ClothesSizeContainer(size: 'M'),
          ClothesSizeContainer(size: 'L'),
          ClothesSizeContainer(size: 'XL'),
          ClothesSizeContainer(size: '2XL'),
        ],
      ),
    );
  }
}

class ClothesSizeContainer extends StatefulWidget {
  final String size;
  const ClothesSizeContainer({super.key, required this.size});

  @override
  State<ClothesSizeContainer> createState() => _ClothesSizeContainerState();
}

class _ClothesSizeContainerState extends State<ClothesSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF5F6FA)),
      child: Center(
        child: Text(widget.size, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
      ),
    );
  }
}
