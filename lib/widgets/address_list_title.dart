import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressListTitle extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  const AddressListTitle({super.key, required this.image, required this.title, required this.subtitle});

  @override
  State<AddressListTitle> createState() => _AddressListTitleState();
}

class _AddressListTitleState extends State<AddressListTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
        leading: Container(width: 50, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF5F6FA)), child: Image.asset(widget.image)),
        title: Text(widget.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF1D1E20))),
        subtitle: Text(widget.subtitle, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
        trailing: Container(
          width: 25,
          height: 25,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFF4AC76D),
          ),
          child: SvgPicture.asset('assets/check.svg'),
        ),
      ),
    );
  }
}
