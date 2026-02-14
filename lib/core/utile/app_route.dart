import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goldy/core/utile/service_locator.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo_impl.dart';
import 'package:goldy/feature/home/presentation/views/cubit/gold_cubit/gold_cubit_cubit.dart';
import 'package:goldy/feature/home/presentation/views/cubit/silver_cubit/silver_cubit_cubit.dart';
import 'package:goldy/feature/home/presentation/views/home_Secreen.dart';
import 'package:goldy/feature/home/presentation/views/widget/home_gold.dart';
import 'package:goldy/feature/home/presentation/views/widget/home_silver.dart';

class AppRoute {
  // GoRouter configuration
  static const khomeviews = '/';
  static const khomegrid = '/homegold';
  static const khomesilver = '/homesilver';
  static final route = GoRouter(
    routes: [
      GoRoute(path: khomeviews, builder: (context, state) => HomeSecreen()),
      GoRoute(
        path: khomegrid,
        builder: (context, state) => BlocProvider(
          create: (context) => GoldCubitCubit(getit.get<HomeRepoImpl>()),
          child: HomeGold(),
        ),
      ),

      GoRoute(
        path: khomesilver,
        builder: (context, state) => BlocProvider(
          create: (context) => SilverCubitCubit(getit.get<HomeRepoImpl>()),
          child: HomeSilver(),
        ),
      ),
    ],
  );
}
