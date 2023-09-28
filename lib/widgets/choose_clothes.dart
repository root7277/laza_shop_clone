import 'package:flutter/material.dart';

class ChooseClothes extends StatefulWidget {
  const ChooseClothes({super.key});

  @override
  State<ChooseClothes> createState() => _ChooseClothesState();
}

class _ChooseClothesState extends State<ChooseClothes> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.6, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(children: [
                Container(
                  width: 160,
                  height: 203,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('assets/clothes.png'),
                ),
                const Positioned(
                  left: 110,
                  bottom: 175,
                  right: 12,
                  top: 15,
                  child: IconFavorite(),
                ),
              ]),
              const SizedBox(height: 5),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'screenNine');
                  },
                  child: const Text('Nike Sportswear Club Fleece', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)))),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text('\$99', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                  ],
                ),
              )
            ],
          );
        });
  }
}

class IconFavorite extends StatefulWidget {
  const IconFavorite({
    super.key,
  });

  @override
  State<IconFavorite> createState() => _IconFavoriteState();
}

class _IconFavoriteState extends State<IconFavorite> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
      icon: isFav ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_border_outlined, color: Colors.grey),
    );
  }
}
