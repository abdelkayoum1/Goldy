import 'package:dartz/dartz.dart';
import 'package:goldy/core/error/error.dart';
import 'package:goldy/feature/home/data/model/gold_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, GoldModel>> getgold();
}
