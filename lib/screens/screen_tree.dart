import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_shop_clone/widgets/text_feild.dart';

class ScreenTree extends StatefulWidget {
  const ScreenTree({super.key});

  @override
  State<ScreenTree> createState() => _ScreenTreeState();
}

class _ScreenTreeState extends State<ScreenTree> {
  bool? isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F6FA),
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: SvgPicture.asset('assets/arrow.svg'),
            ),
          ),
        ),
        const SizedBox(height: 25),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
          ],
        ),
        const SizedBox(height: 152),
        const TextFeildWidget(hintText: 'Esther Howard', label: 'Username'),
        const SizedBox(height: 20),
        const TextFeildWidget(hintText: 'HJ@#9783kja', label: 'Password'),
        const SizedBox(height: 20),
        const TextFeildWidget(hintText: 'bill.sanders@example.com', label: 'Email Address'),
        const SizedBox(height: 42),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Remember me', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
              Checkbox(
                activeColor: Colors.green,
                value: isChecked4, 
                onChanged: (newBool){
                  setState(() {
                    isChecked4 = newBool;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Center(child: Text('Sign Up', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))),
                        backgroundColor: const Color(0xFF9775FA),
                        padding: const EdgeInsets.only(bottom: 40),
                        onVisible: (){
                          Navigator.pushNamed(context, 'screenFour');
                        },
                      ),
                    );
                  });
                }
              ),
            ],
          ),
        )
      ],
     ),
    );
  }
}