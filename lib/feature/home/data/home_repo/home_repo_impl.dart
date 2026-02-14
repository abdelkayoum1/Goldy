import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:goldy/core/error/error.dart';
import 'package:goldy/core/utile/api_service.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo.dart';
import 'package:goldy/feature/home/data/model/gold_model.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, GoldModel>> getgold() async {
    try {
      var data = await apiService.get(point: 'XAU');
      GoldModel gold = GoldModel.fromJson(data);

      return Right(gold);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer(error: e.message));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GoldModel>> getsilver() async {
    try {
      var data = await apiService.get(point: 'XAG');

      GoldModel silver = GoldModel.fromJson(data);

      return Right(silver);
    } catch (e) {
      if (e is DioException) {
        return Left(FailureServer(error: e.message));
      }
      return Left(FailureServer(error: e.toString()));
    }
  }
}
