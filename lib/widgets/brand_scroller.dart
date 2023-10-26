import 'package:flutter/material.dart';
import 'package:laza_shop_clone/provider/categories_provider.dart';

class BrandScroller extends StatefulWidget {
  const BrandScroller({super.key});

  @override
  State<BrandScroller> createState() => _BrandScrollerState();
}

class _BrandScrollerState extends State<BrandScroller> {
  Categories categories = Categories();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: categories.getCategories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF5F6FA),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          snapshot.data[index],
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                        ),
                      )
                    ],
                  ),
                );
              });
        } else {
          return const Center(
            child: Text('error'),
          );
        }
      },
    );
  }
}
