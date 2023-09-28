import 'package:flutter/material.dart';

class ClothesView extends StatelessWidget {
  const ClothesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/clothes_view_image/image1.png'),
          Image.asset('assets/clothes_view_image/image2.png'),
          Image.asset('assets/clothes_view_image/image3.png'),
          Image.asset('assets/clothes_view_image/image4.png'),
        ],
      ),
    );
  }
}
