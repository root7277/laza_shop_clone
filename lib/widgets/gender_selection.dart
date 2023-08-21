import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          genderSelection('Man', 0),
          genderSelection('Woman', 1)
        ],
      ),
    );
  }


  Widget genderSelection(String gender, int index){
    return InkWell(
      onTap: (){
        setState(() {
          current = index;
        });
      },
      child: Container(
        width: 152,
        height: 60,
        decoration: BoxDecoration(
          color: current == index? const Color(0xFF9775FA): const Color(0xFFF5F6FA),
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Center(
          child: Text(
            gender,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: current == index? Colors.white: const Color(0xFF8F959E)),
          ),
        ),
      ),
    );
  }
}
