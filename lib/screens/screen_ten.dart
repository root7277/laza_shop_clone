import 'package:flutter/material.dart';
import 'package:laza_shop_clone/widgets/address.dart';
import 'package:laza_shop_clone/widgets/address_list_title.dart';
import 'package:laza_shop_clone/widgets/cart.dart';
import 'package:laza_shop_clone/widgets/icon_arrow.dart';
import 'package:laza_shop_clone/widgets/order_info.dart';

class ScreenTen extends StatefulWidget {
  const ScreenTen({super.key});

  @override
  State<ScreenTen> createState() => _ScreenTenState();
}

class _ScreenTenState extends State<ScreenTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 45),
            child: Row(
              children: [
                IconArrow(
                    iconSvg: 'assets/arrowleft.svg',
                    onChanged: () {
                      Navigator.pop(context);
                    }),
                const SizedBox(width: 104),
                const Text('Cart', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20)))
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return const Cart();
                })),
          ),
          const SizedBox(height: 20),
          const CartAddress(txt: 'Delivery Address'),
          const SizedBox(height: 5),
          const AddressListTitle(image: 'assets/map.png', title: 'Chhatak, Sunamgonj 12/8AB', subtitle: 'Sylhet'),
          const CartAddress(txt: 'Payment Method'),
          const SizedBox(height: 5),
          const AddressListTitle(image: 'assets/frame.png', title: 'Visa Classic', subtitle: '**** 7690'),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Order Info', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const OrderInfo(subtotal: 'Subtotal', price: '\$110'),
          const SizedBox(height: 10),
          const OrderInfo(subtotal: 'Shipping cost', price: '\$10'),
          const SizedBox(height: 10),
          const OrderInfo(subtotal: 'Total', price: '\$120'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'screenEleven');
            },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)), minimumSize: MaterialStatePropertyAll(Size(375, 75))),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Checkout',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
