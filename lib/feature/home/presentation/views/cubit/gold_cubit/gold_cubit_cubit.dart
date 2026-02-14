import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:goldy/feature/home/data/home_repo/home_repo.dart';
import 'package:goldy/feature/home/data/model/gold_model.dart';

part 'gold_cubit_state.dart';

class GoldCubitCubit extends Cubit<GoldCubitState> {
  final HomeRepo homerepo;
  GoldCubitCubit(this.homerepo) : super(GoldCubitInitial());
  Future<void> getgold() async {
    emit(GoldCubitLoading());

    var resultat = await homerepo.getgold();

    resultat.fold(
      (failure) {
        emit(GoldCubitfailure(failure.error.toString()));
      },
      (gold) {
        emit(GoldCubitsucces(gold));
      },
    );
  }
}
