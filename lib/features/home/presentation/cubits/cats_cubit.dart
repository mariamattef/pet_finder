import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfinderapp/features/home/domain/use_cases/get_cat_usecase.dart';
import 'package:petfinderapp/features/home/presentation/cubits/cats_cubit/cats_state.dart';

class CatsCubit extends Cubit<CatsState> {
  CatsCubit({required this.getCatUsecase}) : super(CatsInitial());
  GetCatUsecase getCatUsecase;

  Future<void> fetchAllCats() async {
    emit(CatsLoading());
    final result = await getCatUsecase.call();
    result.fold(
      (failure) => emit(CatsFailure(failure.errorMessage)),
      (cats) => emit(CatsSuccess(cats)),
    );
  }
}
