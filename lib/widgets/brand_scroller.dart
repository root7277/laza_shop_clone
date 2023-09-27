import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrandScroller extends StatefulWidget {
  const BrandScroller({super.key});

  @override
  State<BrandScroller> createState() => _BrandScrollerState();
}

class _BrandScrollerState extends State<BrandScroller> {
  List brand = [
    {
      'image': 'assets/Adidas.svg',
      'name': 'Adidas',
    },
    {
      'image': 'assets/Nike.svg',
      'name': 'Nike',
    },
    {
      'image': 'assets/Fila.svg',
      'name': 'Fila',
    },
    {
      'image': 'assets/puma.svg',
      'name': 'Puma',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: brand.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F6FA),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(brand[index]['image']),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 17, right: 10, bottom: 16),
                  child: Text(
                    brand[index]['name'],
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                  ),
                )
              ],
            ),
          );
        });
  }
}
