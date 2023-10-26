import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Men\'s Tie-Dye T-Shirt \n Nike Sportswear', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
                const SizedBox(height: 10),
                const Text('\$45 (-\$4.00 Tax)', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                      width: 95,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count > 1) {
                                  count--;
                                } else {
                                  count;
                                }
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(width: 1, color: const Color(0xFF8F959E))),
                              child: SvgPicture.asset('assets/arrow_down.svg'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(count.toString(), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                          const SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(width: 1, color: const Color(0xFF8F959E))),
                              child: SvgPicture.asset('assets/arrow_up.svg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 65),
                    InkWell(
                      child: Container(
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, border: Border.all(width: 1, color: const Color(0xFF8F959E))),
                        child: SvgPicture.asset('assets/Delete.svg'),
                      ),
                    ),
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
