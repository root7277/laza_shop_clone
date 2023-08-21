import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegesterSelection extends StatefulWidget {
  final String image;
  final String title;
  final Color colorR;
  const RegesterSelection({super.key, required this.image, required this.title, required this.colorR});

  @override
  State<RegesterSelection> createState() => _RegesterSelectionState();
}

class _RegesterSelectionState extends State<RegesterSelection> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Center(child: Text('Create an Account', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))),
            backgroundColor: const Color(0xFF9775FA),
            padding: const EdgeInsets.only(bottom: 40),
            onVisible: (){
              Navigator.pushNamed(context, 'screenTree');
            },
          ),
        );
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: widget.colorR,
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(widget.image),
              Text(widget.title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}