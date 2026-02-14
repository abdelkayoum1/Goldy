import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/utile/color.dart';
import 'package:goldy/feature/home/presentation/views/cubit/silver_cubit/silver_cubit_cubit.dart';

class HomeSilver extends StatefulWidget {
  const HomeSilver({super.key});

  @override
  State<HomeSilver> createState() => _HomeSilverState();
}

class _HomeSilverState extends State<HomeSilver> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SilverCubitCubit>().getsilver();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Silver')),
      body: Center(
        child: BlocBuilder<SilverCubitCubit, SilverCubitState>(
          builder: (context, state) {
            if (state is SilverCubitfailure) {
              return Text(state.errormessage);
            } else if (state is SilverCubitsucces) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.silver.price.toString(),
                        style: TextStyle(color: AppColor.primarycolor),
                      ),
                      SizedBox(width: 5),
                      Text(
                        state.silver.symbol.toString(),
                        style: TextStyle(color: AppColor.primarycolor),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
