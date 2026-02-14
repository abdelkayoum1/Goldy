import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo.dart';
import 'package:goldy/feature/home/data/model/gold_model.dart';

part 'silver_cubit_state.dart';

class SilverCubitCubit extends Cubit<SilverCubitState> {
  final HomeRepo homeRepo;
  SilverCubitCubit(this.homeRepo) : super(SilverCubitInitial());

  Future<void> getsilver() async {
    emit(SilverCubitLoading());
    var resultat = await homeRepo.getgold();

    return resultat.fold(
      (failure) {
        emit(SilverCubitfailure(failure.error.toString()));
      },
      (silver) {
        emit(SilverCubitsucces(silver));
      },
    );
  }
}
