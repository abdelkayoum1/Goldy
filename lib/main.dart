import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/constante.dart';
import 'package:goldy/core/utile/service_locator.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo_impl.dart';
import 'package:goldy/feature/home/presentation/views/cubit/gold_cubit/gold_cubit_cubit.dart';
import 'package:goldy/feature/home/presentation/views/home_Secreen.dart';
import 'package:goldy/core/utile/app_route.dart';

void main() {
  setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.route,
      title: 'Flutter Demo',
      // theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: colors),
    );
  }
}
