part of 'gold_cubit_cubit.dart';

sealed class GoldCubitState extends Equatable {
  const GoldCubitState();

  @override
  List<Object> get props => [];
}

final class GoldCubitInitial extends GoldCubitState {}

final class GoldCubitLoading extends GoldCubitState {}

final class GoldCubitsucces extends GoldCubitState {
  final GoldModel gold;
  const GoldCubitsucces(this.gold);
}

final class GoldCubitfailure extends GoldCubitState {
  final String errormessage;
  const GoldCubitfailure(this.errormessage);
}
