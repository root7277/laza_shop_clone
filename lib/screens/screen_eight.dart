import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/brand_scroller.dart';
import 'package:laza_shop_clone/widgets/choose_clothes.dart';
import 'package:laza_shop_clone/widgets/drawer_scroll.dart';
import 'package:laza_shop_clone/widgets/view_all.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFF5F6FA),
                      ),
                      child: SvgPicture.asset('assets/menu.svg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset('assets/profile.png'),
              title: const Text(
                'Mrh Raju',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
              ),
              subtitle: const Text(
                'Verified Profile',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF1D1E20)),
              ),
              trailing: Container(
                width: 66,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF5F5F5),
                ),
                child: const Center(
                  child: Text(
                    '3 Orders',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0xFF8F959E)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/drawer/sun.svg'),
                  const SizedBox(width: 10),
                  const Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF1D1E20)),
                  ),
                  const SizedBox(width: 102),
                  Switch(
                    activeColor: const Color(0xFF4BC76D),
                    value: isSwitched2,
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/undov.svg', svgName: 'Account Information'),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/Lock.svg', svgName: 'Password'),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/Bag.svg', svgName: 'Order'),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/Wallet.svg', svgName: 'My Cards'),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/Heart.svg', svgName: 'Wishlist'),
            const SizedBox(height: 25),
            const DrawerScroll(svg: 'assets/drawer/Setting.svg', svgName: 'Settings'),
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SvgPicture.asset('assets/drawer/Logout.svg'),
                  const SizedBox(width: 10),
                  const Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFFF5757)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFF5F6FA),
                      ),
                      child: SvgPicture.asset('assets/menu.svg'),
                    ),
                  );
                }),
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
