part of 'silver_cubit_cubit.dart';

sealed class SilverCubitState extends Equatable {
  const SilverCubitState();

  @override
  List<Object> get props => [];
}

final class SilverCubitInitial extends SilverCubitState {}

final class SilverCubitLoading extends SilverCubitState {}

final class SilverCubitsucces extends SilverCubitState {
  final GoldModel silver;
  const SilverCubitsucces(this.silver);
}

final class SilverCubitfailure extends SilverCubitState {
  final String errormessage;
  const SilverCubitfailure(this.errormessage);
}
