import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/clothes_size.dart';
import 'package:laza_shop_clone/widgets/clothes_view.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';
import 'package:laza_shop_clone/widgets/view_all.dart';

class ScreenNine extends StatefulWidget {
  const ScreenNine({super.key});

  @override
  State<ScreenNine> createState() => _ScreenNineState();
}

class _ScreenNineState extends State<ScreenNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 31),
                child: Center(child: Image.asset('assets/foto.png', height: 350)),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 45, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconArrow(
                        iconSvg: 'assets/arrowleft.svg',
                        onChanged: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconArrow(
                        iconSvg: 'assets/Bag.svg',
                        onChanged: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Men\'s Printed Pullover Hoodie', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                Text('Price', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nike Club Fleece', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                Text('\$120', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
              ],
            ),
          ),
          const SizedBox(height: 21),
          const ClothesView(),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ViewAll(textLeading: 'Size', textTraeling: 'Size Guide'),
          ),
          const SizedBox(height: 10),
          const ClothesSize(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Total Price', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                    SizedBox(height: 5),
                    Text('with VAT,SD', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                  ],
                ),
                Text('\$125', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'screenTen');
              },
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
              child: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
                ),
              ))
        ],
      ),
    );
  }
}
