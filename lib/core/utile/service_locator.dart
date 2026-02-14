import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:goldy/core/utile/api_service.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo_impl.dart';

final getit = GetIt.instance;

void setup() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getit.get<ApiService>()),
  );
}
