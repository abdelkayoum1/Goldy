import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/constante.dart';
import 'package:goldy/core/utile/color.dart';
import 'package:goldy/core/utile/service_locator.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo_impl.dart';
import 'package:goldy/feature/home/presentation/views/cubit/cubit/gold_cubit_cubit.dart';

class HomeGold extends StatefulWidget {
  const HomeGold({super.key});

  @override
  State<HomeGold> createState() => _HomeGoldState();
}

class _HomeGoldState extends State<HomeGold> {
  @override
  void initState() {
    super.initState();
    print('hihi');
    context.read<GoldCubitCubit>().getgold();

    print('accept');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colors,
        title: Text('Gold', style: TextStyle(color: AppColor.primarycolor)),
      ),
      body: BlocBuilder<GoldCubitCubit, GoldCubitState>(
        builder: (context, state) {
          if (state is GoldCubitfailure) {
            return Text(state.errormessage);
          } else if (state is GoldCubitsucces) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image.png'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.gold.price.toString(),
                      style: TextStyle(color: AppColor.primarycolor),
                    ),
                    Text(
                      state.gold.name.toString(),
                      style: TextStyle(color: AppColor.primarycolor),
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
