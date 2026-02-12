import 'package:flutter/material.dart';
import 'package:goldy/core/utile/color.dart';
import 'package:goldy/core/utile/customer_botton.dart';
import 'package:goldy/core/utile/text_string.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomerBotton(
            text: TextString.textgold,
            onPressed: () {},
            color: AppColor.primarycolor,
          ),
          SizedBox(height: 5),
          CustomerBotton(
            text: TextString.textsliver,
            onPressed: () {},
            color: AppColor.secondecolor,
          ),
        ],
      ),
    );
  }
}
