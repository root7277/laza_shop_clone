import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: 335,
        height: 120,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.only(left: 11, top: 4, right: 12),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF5F6FA)),
              child: Image.asset('assets/cart.png'),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Men\'s Tie-Dye T-Shirt \n Nike Sportswear', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
                SizedBox(height: 10),
                Text('\$45 (-\$4.00 Tax)', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: Row(
                        children: [
                          CartIcon(cartImage: 'assets/arrow_down.svg'),
                          SizedBox(width: 15),
                          Text('1', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                          SizedBox(width: 15),
                          CartIcon(cartImage: 'assets/arrow_up.svg'),
                        ],
                      ),
                    ),
                    SizedBox(width: 68),
                    CartIcon(cartImage: 'assets/Delete.svg')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CartIcon extends StatelessWidget {
  final String cartImage;
  const CartIcon({
    super.key,
    required this.cartImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(width: 1, color: const Color(0xFF8F959E))),
      child: SvgPicture.asset(cartImage),
    );
  }
}
