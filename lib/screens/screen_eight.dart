import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/brand_scroller.dart';
import 'package:laza_shop_clone/widgets/choose_clothes.dart';
import 'package:laza_shop_clone/widgets/view_all.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF5F6FA),
                  ),
                  child: SvgPicture.asset('assets/menu.svg'),
                ),
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF5F6FA),
                  ),
                  child: SvgPicture.asset('assets/Bag.svg'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Hello', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Welcome to Laza', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF5F6FA)),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      iconColor: Color(0xFF8F959E),
                      hintText: 'Search...',
                      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 60,
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF9775FA),
                  ),
                  child: SvgPicture.asset('assets/Voice.svg'),
                )
              ],
            ),
            const SizedBox(height: 20),
            const ViewAll(textLeading: 'Choose Brand', textTraeling: 'View All'),
            const SizedBox(height: 15),
            const Expanded(child: BrandScroller()),
            const Expanded(
              flex: 7,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  ViewAll(textLeading: 'New Arraival', textTraeling: 'View All'),
                  SizedBox(height: 340, child: ChooseClothes()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
