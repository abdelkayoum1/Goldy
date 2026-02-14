import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:goldy/core/utile/app_route.dart';
import 'package:goldy/core/utile/color.dart';
import 'package:goldy/core/utile/customer_botton.dart';
import 'package:goldy/core/utile/text_string.dart';

class HomeSecreenBody extends StatelessWidget {
  const HomeSecreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomerBotton(
          text: TextString.textgold,
          onPressed: () {
            GoRouter.of(context).push(AppRoute.khomegrid);
          },
          color: AppColor.primarycolor,
        ),
        SizedBox(height: 5),
        CustomerBotton(
          text: TextString.textsliver,
          onPressed: () {},
          color: AppColor.secondecolor,
        ),
      ],
    );
  }
}
